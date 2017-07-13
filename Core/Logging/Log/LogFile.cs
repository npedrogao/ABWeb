using Core.Logging.Log.SharpZipLib.Zip;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Management;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace Core.Logging
{
    public class LogFile
    {
        public const int FREEDISKSPACE = 10; //10%
        public const int MAXDAYSTOKEEP = 30; // 30 Days
        public const int MAXFILESIZEMBYTES = 32; // 32MBytes		
        private const int MBYTES = 1048576;

        private const string LOG_DATE_FORMAT = "yyyyMMdd_HHmmss";
        private const string ZIP_DATE_FORMAT = "yyyyMMdd";

        private string applicationName;

        private string fileName;
        private string filePath;
        private long fileSizeBytes;
        private int freeDiskSpace = FREEDISKSPACE;
        private DateTime lastDateTime;
        private int maxDaysToKeep = MAXDAYSTOKEEP;
        private long maxFilesSizeBytes = MAXFILESIZEMBYTES * MBYTES; //FROM MBytes to Bytes
        private StreamWriter stream;
        private bool writeError;
        private string zipFileName;
        private string zipPassword;
        private bool forceFlush;
        private DateTime fileCreatedDate;

        private object zippingMutex = new object();

        #region public LogFile( string applicationName )

        public LogFile(string logPath, string logApplicationName, int logMaxFileSize, int logMaxDaysToKeep, int logFreeDiskSpace)
        {
            this.forceFlush = true;
            this.filePath = logPath;
            this.maxFilesSizeBytes = logMaxFileSize * MBYTES;
            this.maxDaysToKeep = logMaxDaysToKeep;
            this.freeDiskSpace = logFreeDiskSpace;
            this.zipPassword = string.Empty;
            this.applicationName = logApplicationName;
            this.lastDateTime = DateTime.Now.Date;
            this.fileCreatedDate = DateTime.Now;
            this.OpenFile(false);
            this.LaunchThread(false);
        }

        ~LogFile()
        {
            lock (zippingMutex)
            {
                this.CleanStream();
                this.HandleFiles(this.fileName, this.zipFileName, this.filePath, true);
            }
        }

        #endregion

        #region private void HandleException( Exception ex )

        private void HandleException(Exception ex)
        {
            EventLog eventLog = new EventLog { Source = System.Web.HttpRuntime.AppDomainAppId };
            try
            {
                eventLog.WriteEntry(this.applicationName + Environment.NewLine + ex.Message, EventLogEntryType.Warning);
            }
            catch
            {
                /* Something got wrong in the event log, ignoring*/
            }

            try
            {
                eventLog.WriteEntry(this.applicationName + Environment.NewLine + ex.StackTrace, EventLogEntryType.Warning);
            }
            catch
            {
                /* Something got wrong in the event log, ignoring*/
            }
        }

        #endregion

        #region private void HandleExceptionEx( Exception ex )

        private void HandleExceptionEx(Exception ex)
        {
            if (!this.writeError)
            {
                this.writeError = true;
                this.HandleException(ex);
            }
        }

        #endregion

        #region private void OpenFile( )

        private void OpenFile(bool changeDate)
        {
            try
            {
                string directoryName = Path.GetDirectoryName(this.filePath);

                if (!Directory.Exists(directoryName))
                    Directory.CreateDirectory(directoryName);

                lock (this)
                {
                    if (changeDate)
                        this.fileCreatedDate = DateTime.Now;

                    this.fileName = BuildFileName(directoryName, this.fileCreatedDate);
                    this.zipFileName = BuildZipFileName(directoryName, this.fileCreatedDate);

                    this.stream = File.AppendText(this.fileName);
                }
            }
            catch (Exception ex)
            {
                this.HandleException(ex);
            }
        }

        #endregion

        #region private void LaunchThread( bool zip)

        private void LaunchThread(bool zip)
        {
            try
            {
                FireAndForget(new delegateHandleFiles(this.HandleFiles)
                                          , this.fileName, this.zipFileName, this.filePath, zip);
            }
            catch (Exception ex)
            {
                this.HandleExceptionEx(ex);
            }
        }

        #endregion

        #region public void WriteLine( string toWrite )

        public void WriteLine(string toWrite)
        {
            this.Write(toWrite + Environment.NewLine);
        }

        #endregion

        #region public void Write( string toWrite )

        public void Write(string toWrite)
        {
            lock (this)
            {
                if (null == this.stream)
                    return;

                try
                {
                    //change file at 0:00am
                    DateTime nowDate = DateTime.Now.Date;
                    if (this.lastDateTime != nowDate)
                    {
                        this.lastDateTime = nowDate;
                        this.fileCreatedDate = nowDate;
                        this.CleanStream();
                        this.LaunchThread(true);
                        this.OpenFile(true);
                    }

                    this.stream.Write(toWrite);
                    this.fileSizeBytes += toWrite.Length;

                    if (this.forceFlush)
                    {
                        this.stream.Flush();
                    }

                    if (this.fileSizeBytes > this.maxFilesSizeBytes)
                    {
                        this.CleanStream();
                        this.LaunchThread(true);
                        this.OpenFile(true);
                    }
                    this.writeError = false;
                }
                catch (Exception ex)
                {
                    this.HandleExceptionEx(ex);
                }
            }
        }

        #endregion

        #region private void CleanStream( )

        private void CleanStream()
        {
            lock (this)
            {
                if (null != this.stream)
                {
                    try
                    {
                        this.stream.Close();
                    }
                    catch
                    {
                    }
                    this.stream = null;
                    this.fileSizeBytes = 0;
                }
            }
        }

        #endregion

        #region private void HandleFiles( string fileName, string zipFileName, string dir2Start, bool zip )

        private void HandleFiles(string inFileName, string inZipFileName, string dir2Start, bool zip)
        {
            if (zip) this.ZipFile(inFileName, inZipFileName);
            SortedList<DateTime, FileInfo> fileList = this.FileListFromDir(dir2Start);
            this.DeleteFiles(dir2Start, fileList);
            this.DeleteSubDirs(dir2Start);
        }

        private delegate void delegateHandleFiles(string fileName, string zipFileName, string dir2Start, bool zip);

        #endregion

        #region private void ZipFile( string fileName, string zipFileName )

        private void ZipFile(string inFileName, string inZipFileName)
        {
            lock (zippingMutex)
            {
                FileStream file = null;
                ZipFile zipFile = null;
                try
                {
                    if (null != inFileName && null != inZipFileName)
                    {
                        FileInfo fInfo = new FileInfo(inFileName);

                        long freeSpaceDrive = GetDriveFreeSpace(inFileName);

                        if (fInfo.Length > freeSpaceDrive)
                            throw new Exception("Insufficient disk space.");


                        file = new FileStream(inZipFileName
                                              , FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.None);

                        try
                        {
                            FileSecurity fs = new FileSecurity();
                            fs.AddAccessRule(new FileSystemAccessRule(
                                                 LogSidHelper.SidToName("S-1-1-0"), // S-1-1-0 -> Everyone
                                                 FileSystemRights.FullControl,
                                                 AccessControlType.Allow));
                            file.SetAccessControl(fs);
                        }
                        catch
                        {
                        }

                        zipFile = new ZipFile((Stream)file);


                        if (!string.IsNullOrEmpty(this.zipPassword))
                            zipFile.Password = this.zipPassword;
                        zipFile.BeginUpdate();
                        //inFileName -> full inFileName c:\dir\dir\file
                        //fInfo.Name -> simple inFileName file
                        zipFile.Add(inFileName, fInfo.Name);
                        zipFile.CommitUpdate();

                        fInfo.Delete();
                    }
                }
                catch (Exception ex)
                {
                    this.HandleException(ex);
                }
                finally
                {
                    if (null != file)
                        file.Close();
                    if (null != zipFile)
                        zipFile.Close();
                }
            }
        }

        #endregion

        #region private void FileListFromDirEx( DirectoryInfo dirInfo, SortedList fileList )

        private static void FileListFromDirEx(DirectoryInfo dirInfo, SortedList<DateTime, FileInfo> fileList)
        {
            FileInfo[] arrFiles = null;

            try
            {
                arrFiles = dirInfo.GetFiles();
            }
            catch
            {
            }

            if (null != arrFiles)
            {
                foreach (FileInfo f in arrFiles)
                {
                    try
                    {
                        // check for two files with the same date
                        if (!fileList.ContainsKey(f.LastWriteTime))
                        {
                            fileList.Add(f.LastWriteTime, f);
                        }
                    }
                    catch (Exception)
                    {
                    }
                }
            }
        }

        #endregion

        #region private SortedList FileListFromDir( string dir2Start )

        private SortedList<DateTime, FileInfo> FileListFromDir(string dir2Start)
        {
            SortedList<DateTime, FileInfo> fileList = new SortedList<DateTime, FileInfo>();

            try
            {
                DirectoryInfo dirInfo = new DirectoryInfo(dir2Start);
                DirectoryInfo[] arrSubDirs = null;

                FileListFromDirEx(dirInfo, fileList);

                //Getting sub-directories
                try
                {
                    arrSubDirs = dirInfo.GetDirectories();
                }
                catch
                {
                }

                //Invoking FileListFromDirEx on subdirectories
                if (null != arrSubDirs)
                    foreach (DirectoryInfo subDirInfo in arrSubDirs)
                        FileListFromDirEx(subDirInfo, fileList);
            }
            catch (Exception ex)
            {
                this.HandleException(ex);
            }
            return fileList;
        }

        #endregion

        #region private void DeleteFiles( string dir2Start, SortedList fileList )

        private void DeleteFiles(string dir2Start, SortedList<DateTime, FileInfo> fileList)
        {
            long size = 0;
            long free = 0;

            this.GetDiskSpace(dir2Start, ref size, ref free);

            DateTime nowDate = DateTime.Now;
            //The fileList is order by LastWriteTime, the oldest on top
            foreach (FileInfo fileInfo in fileList.Values)
            {
                try
                {
                    //Never erase today files, this looks like a good solution
                    //to avoid loops ( write, zip, erase of the same file )
                    //This was only create to avoid the referred problem.
                    if (fileInfo.LastWriteTime.Date == nowDate.Date)
                        break;

                    //erase old files maxDaysToKeep
                    TimeSpan diff = nowDate.Subtract(fileInfo.LastWriteTime);
                    if (diff.Days >= this.maxDaysToKeep)
                    {
                        free += fileInfo.Length;
                        fileInfo.Delete();
                    }
                    //erase until freeDiskSpace is available
                    else
                    {
                        if (0 == size)
                            break;
                        long space = free * 100 / size;
                        if (space >= this.freeDiskSpace)
                            break;

                        free += fileInfo.Length;
                        fileInfo.Delete();
                    }
                }
                catch
                {
                }
            }
        }

        #endregion

        #region private void GetDiskSpace( string dir2Start, ref long size, ref long free )

        private void GetDiskSpace(string dir2Start, ref long size, ref long free)
        {
            try
            {
                string drive = dir2Start.Substring(0, 1);
                ManagementObject disk = new ManagementObject("win32_logicaldisk.deviceid=\"" + drive + ":\"");
                disk.Get();
                size = Int64.Parse(disk["Size"].ToString());
                free = Int64.Parse(disk["FreeSpace"].ToString());
            }
            catch (Exception ex)
            {
                this.HandleException(ex);
            }
        }

        #endregion

        #region private void DeleteSubDirs( string dir2Start )

        private void DeleteSubDirs(string dir2Start)
        {
            try
            {
                DirectoryInfo dirInfo = new DirectoryInfo(dir2Start);
                DirectoryInfo[] arrSubDirs = null;

                //Getting sub-directories
                try
                {
                    arrSubDirs = dirInfo.GetDirectories();
                }
                catch
                {
                }

                if (null == arrSubDirs)
                    return;

                foreach (DirectoryInfo subDirInfo in arrSubDirs)
                {
                    FileInfo[] arrFiles = null;
                    try
                    {
                        arrFiles = subDirInfo.GetFiles();
                    }
                    catch
                    {
                    }

                    if ((null != arrFiles) && (0 == arrFiles.Length))
                    {
                        try
                        {
                            subDirInfo.Delete(false);
                        }
                        catch
                        {
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                this.HandleException(ex);
            }
        }

        #endregion

        #region private long GetDriveFreeSpace ( String path )

        private static long GetDriveFreeSpace(String path)
        {
            if (String.IsNullOrEmpty(path))
                throw new Exception("Invalid directory path.");

            String driveLetter = path.Substring(0, 1);

            DriveInfo di = new DriveInfo(driveLetter);

            if (di == null)
                throw new Exception("Unable to get directory information.");

            return di.TotalFreeSpace;
        }

        #endregion

        #region private string BuildFileName(string directoryName, DateTime date)

        private string BuildFileName(string directoryName, DateTime date)
        {
            if (date == null)
                date = this.fileCreatedDate;

            return directoryName + @"\" + this.applicationName
                                 + @"." + date.ToString(LOG_DATE_FORMAT)
                //+ @"#" + AppDomain.CurrentDomain.GetHashCode()
                                 + @".log";
        }

        #endregion

        #region private string BuildZipFileName(string directoryName, DateTime date)

        private string BuildZipFileName(string directoryName, DateTime date)
        {
            if (date == null)
                date = this.fileCreatedDate;

            return directoryName + @"\_" + this.applicationName
                                 + @"." + date.ToString(ZIP_DATE_FORMAT)
                                 + @".zip";
        }

        #endregion

        #region FireAndForget

        private static readonly AsyncCallback dynamicInvokeDone = DynamicInvokeDone;
        private static readonly DynamicInvokeShimProc dynamicInvokeShim = DynamicInvokeShim;

        public static void FireAndForget(Delegate d, params object[] args)
        {
            dynamicInvokeShim.BeginInvoke(d, args, dynamicInvokeDone, null);
        }

        private static void DynamicInvokeShim(Delegate d, object[] args)
        {
            try
            {
                d.DynamicInvoke(args);
            }
            catch (Exception ex)
            {
                EventLog eventLog = new EventLog { Source = System.Web.HttpRuntime.AppDomainAppId };
                try
                {
                    eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.Message, EventLogEntryType.Warning);
                    eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.StackTrace,
                                        EventLogEntryType.Warning);

                    if (null != ex.InnerException)
                    {
                        eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.InnerException.Message,
                                            EventLogEntryType.Warning);
                        eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.InnerException.StackTrace,
                                            EventLogEntryType.Warning);
                    }
                }
                catch
                {
                    /* Something got wrong in the event log, ignoring*/
                }
            }
        }

        private static void DynamicInvokeDone(IAsyncResult ar)
        {
            try
            {
                dynamicInvokeShim.EndInvoke(ar);
            }
            catch (Exception ex)
            {
                EventLog eventLog = new EventLog { Source = System.Web.HttpRuntime.AppDomainAppId };
                try
                {
                    eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.Message, EventLogEntryType.Warning);
                    eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.StackTrace,
                                        EventLogEntryType.Warning);

                    if (null != ex.InnerException)
                    {
                        eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.InnerException.Message,
                                            EventLogEntryType.Warning);
                        eventLog.WriteEntry("Fire_and_Forget" + Environment.NewLine + ex.InnerException.StackTrace,
                                            EventLogEntryType.Warning);
                    }
                }
                catch
                {
                    /* Something got wrong in the event log, ignoring*/
                }
            }
        }

        private delegate void DynamicInvokeShimProc(Delegate d, object[] args);

        #endregion
    }
}
