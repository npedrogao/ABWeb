using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;

namespace Core.Logging
{
    public class LogUtils
    {
        public const string LOG_BEGIN = "> {0}";
        public const string LOG_END = "< {0}";
        private static string[] _levelString = { "D", "I", "W", "E", "F" };

        //private static int _tab;
        private static Hashtable _tabs = new Hashtable();

        private static void SetTab(int _value)
        {
            int index = Thread.CurrentThread.ManagedThreadId;
            int currentValue = 0;

            if (!_tabs.Contains(index))
                _tabs.Add(index, currentValue);
            else
                currentValue = (int)_tabs[index];

            currentValue += _value;

            if (currentValue < 0) currentValue = 0;
            else if (currentValue > 16) currentValue = 16;

            _tabs[index] = currentValue;
        }

        private static int GetTab(int index)
        {
            return _tabs.Contains(index) ? (int)_tabs[index] : 0;
        }

        /// <summary>
        /// [I] Information: informational only
        /// [W] Warning: if there was an anomalous situation
        /// [E] Error: if an error occurred
        /// </summary>
        public enum Type
        {
            Debug,
            Info,
            Warning,
            Error,
            Fatal,
            Off
        }

        private static Type level = Type.Debug;
        private static LogFile logFile;
        private static LogFile GetLog()
        {
            if (null == logFile)
            {
                string logPath;
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["LOG_PATH"]))
                    logPath = ConfigurationManager.AppSettings["LOG_PATH"];
                else
                    return null;

                string logApplicationName;
                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["LOG_APPLICATION_NAME"]))
                    logApplicationName = ConfigurationManager.AppSettings["LOG_APPLICATION_NAME"];
                else
                    logApplicationName = "Unknown";

                if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["LOG_LEVEL"]))
                {
                    switch (ConfigurationManager.AppSettings["LOG_LEVEL"].ToLower())
                    {
                        case "all": level = Type.Debug; break;
                        case "info": level = Type.Info; break;
                        case "information": level = Type.Info; break;
                        case "warning": level = Type.Warning; break;
                        case "warn": level = Type.Warning; break;
                        case "error": level = Type.Error; break;
                        case "fatal": level = Type.Fatal; break;
                        case "off": level = Type.Off; break;
                        default: level = Type.Debug; break;
                    }
                }

                int logMaxFileSize;
                try
                {
                    logMaxFileSize = Int32.Parse(ConfigurationManager.AppSettings["LOG_MAX_FILE_SIZE_MBYTES"]);
                }
                catch
                {
                    logMaxFileSize = LogFile.MAXFILESIZEMBYTES;
                }

                int logMaxDaysToKeep;
                try
                {
                    logMaxDaysToKeep = Int32.Parse(ConfigurationManager.AppSettings["LOG_MAX_DAYS_TO_KEEP"]);
                }
                catch
                {
                    logMaxDaysToKeep = LogFile.MAXDAYSTOKEEP;
                }

                int logFreeDiskSpace;
                try
                {
                    logFreeDiskSpace = Int32.Parse(ConfigurationManager.AppSettings["LOG_FREE_DISK_SPACE"]);
                }
                catch
                {
                    logFreeDiskSpace = LogFile.FREEDISKSPACE;
                }


                logFile = new LogFile(logPath, logApplicationName, logMaxFileSize, logMaxDaysToKeep, logFreeDiskSpace);
            }
            return logFile;
        }

        /// <summary>
        /// Adds to log.
        /// </summary>
        /// <param name="text">The text.</param>
        public static void AddPerformanceDebugToLog(string text)
        {
            StackTrace stackTrace = new StackTrace();
            Debug("Performance: " + stackTrace.GetFrame(1).GetMethod().Name + " - " + text + " - Time: " + DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss.fff"));
        }

        /// <summary>
        /// Enters the method.
        /// </summary>
        public static void Enter()
        {
            try
            {
                if (level > Type.Info) return;

                StackTrace stackTrace = new StackTrace();
                MethodBase method = stackTrace.GetFrame(1).GetMethod();
                if (method.DeclaringType != null)
                {
                    string[] split = method.DeclaringType.ToString().Split('.');
                    WriteLine(Type.Info, "> " + split[split.Length - 1] + "." + method.Name);
                }
                else
                {
                    WriteLine(Type.Info, "> ?." + method.Name);
                }
            }
            catch
            {
                WriteLine(Type.Info, "> ???");
            }
            SetTab(2);
        }

        public static void Enter(MethodBase method)
        {
            try
            {
                if (level > Type.Info) return;

                StackTrace stackTrace = new StackTrace();
                if (method.DeclaringType != null)
                {
                    string[] split = method.DeclaringType.ToString().Split('.');
                    WriteLine(Type.Info, "> " + split[split.Length - 1] + "." + method.Name);
                }
                else
                {
                    WriteLine(Type.Info, "> ?." + method.Name);
                }
            }
            catch
            {
                WriteLine(Type.Info, "> ???");
            }
            SetTab(2);
        }

        /// <summary>
        /// Leaves the method.
        /// </summary>
        public static void Leave()
        {
            SetTab(-2);
            try
            {
                if (level > Type.Info) return;

                StackTrace stackTrace = new StackTrace();
                MethodBase method = stackTrace.GetFrame(1).GetMethod();
                if (method.DeclaringType != null)
                {
                    string[] split = method.DeclaringType.ToString().Split('.');
                    WriteLine(Type.Info, "< " + split[split.Length - 1] + "." + method.Name);
                }
                else
                {
                    WriteLine(Type.Info, "< ?." + method.Name);
                }
            }
            catch
            {
                WriteLine(Type.Info, "< ???");
            }
        }

        public static void Leave(MethodBase method)
        {
            SetTab(-2);
            try
            {
                if (level > Type.Info) return;

                StackTrace stackTrace = new StackTrace();
                if (method.DeclaringType != null)
                {
                    string[] split = method.DeclaringType.ToString().Split('.');
                    WriteLine(Type.Info, "< " + split[split.Length - 1] + "." + method.Name);
                }
                else
                {
                    WriteLine(Type.Info, "< ?." + method.Name);
                }
            }
            catch
            {
                WriteLine(Type.Info, "< ???");
            }
        }

        /// <summary>
        /// Add a debug line
        /// </summary>
        /// <param name="message">The message.</param>
        public static void Debug(string message)
        {
            if (level > Type.Debug) return;
            WriteLine(Type.Debug, message);
        }

        /// <summary>
        /// Add a info line
        /// </summary>
        /// <param name="message">The message.</param>
        public static void Info(string message)
        {
            if (level > Type.Info) return;
            WriteLine(Type.Info, message);
        }

        /// <summary>
        /// Add a warning line
        /// </summary>
        /// <param name="message">The message.</param>
        public static void Warning(string message)
        {
            if (level > Type.Warning) return;
            WriteLine(Type.Warning, message);
        }

        /// <summary>
        /// Add an error line
        /// </summary>
        /// <param name="message">The message.</param>
        public static void Error(Exception ex)
        {
            //WriteToEventLog(ex.ToString());

            if (level > Type.Error) return;
            WriteLine(Type.Error, ex.Message);
        }

        /// <summary>
        /// Add an fatal line
        /// </summary>
        /// <param name="message">The message.</param>
        public static void Fatal(string message)
        {
            //WriteToEventLog(message);

            if (level > Type.Fatal) return;
            WriteLine(Type.Fatal, message);
        }


        private static void WriteLine(Type level, string message)
        {
            LogFile log = GetLog();
            if (null != log)
            {
                log.WriteLine(LineHeader(level) + message);

                if (level == Type.Error)
                {
                    StackFrame[] stackFrames = (new StackTrace()).GetFrames(); // get method calls (frames)

                    // write call stack method names
                    foreach (StackFrame item in stackFrames)
                    {
                        var info = item.GetMethod();
                        log.WriteLine(LineHeader(level) + ((null != info.ReflectedType) ? info.ReflectedType.Namespace + "." + info.ReflectedType.Name : "") + "." + info.Name);
                    }
                }
            }
        }

        private static StringBuilder LineHeader(Type level)
        {
            int threadId = Thread.CurrentThread.ManagedThreadId;

            StringBuilder header = new StringBuilder(
                DateTime.Now.ToString("HH:mm:ss.fff"))
                .Append(" ")
                .Append(_levelString[(int)level])
                .Append(" ")
                .Append(String.Format("{0,6}", threadId))
                .Append(" ")
                .Append("".PadLeft(GetTab(threadId)));

            return header;
        }

        private static string StackTraceToString()
        {
            StringBuilder sb = new StringBuilder(256);
            var frames = new StackTrace().GetFrames();

            if (null == frames) return string.Empty;

            for (int i = 1; i < frames.Length; i++) /* Ignore current StackTraceToString method...*/
            {
                var currFrame = frames[i];
                var method = currFrame.GetMethod();
                sb.AppendLine(string.Format("{0}:{1}",
                    method.ReflectedType.Name,
                    method.Name));
            }
            return sb.ToString();
        }
    }
}
