using log4net;
using log4net.Config;
using System;
using System.Diagnostics;
using System.Xml;

[assembly: log4net.Config.XmlConfigurator(Watch = true)]
namespace CommonLib
{
    public class LoggingHelper
    {
        private static readonly ILog logger = GetLog();

        private static ILog GetLog()
        {
            XmlDocument xmlDocument = new XmlDocument();

            try
            {
                xmlDocument.Load(Properties.Settings.Default.LogFileLocation);            
            }
            catch (Exception)
            {
                return null;
            }

            XmlElement xml = xmlDocument.DocumentElement;

            XmlConfigurator.Configure(xml);
            return LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="LoggingHelper"/> class.
        /// </summary>
        private LoggingHelper()
        {
        }

        #region Core Methods


        /// <summary>
        /// Log any Event
        /// </summary>
        /// <param name="methodName"></param>
        /// <param name="message"></param>
        /// <param name="loggingType"></param>
        public static void LogEvent(string message, LoggingType loggingType)
        {
            if (logger != null)
            {

                StackTrace stackTrace = new StackTrace();           // get call stack
                StackFrame[] stackFrames = stackTrace.GetFrames();

                switch (loggingType)
                {
                    case LoggingType.Fatal:
                        logger.Fatal(stackFrames[1].GetMethod() + " - " + message);
                        break;
                    case LoggingType.Error:
                        logger.Error(stackFrames[1].GetMethod() + " - " + message);
                        break;
                    case LoggingType.Debug:
                        logger.Debug(stackFrames[1].GetMethod() + " - " + message);
                        break;
                    case LoggingType.Warning:
                        logger.Warn(stackFrames[1].GetMethod().Name + " - " + message);
                        break;
                    case LoggingType.Information:
                        logger.Info(stackFrames[1].GetMethod().Name + " - " + message);
                        break;
                    default: //Default as warning...
                        logger.Info(stackFrames[1].GetMethod().Name + " - " + message);
                        break;
                }
            }
        }

        /// <summary>
        /// Log Exception
        /// </summary>
        /// <param name="methodName">Method Caller Name</param>
        /// <param name="message">Adicional message</param>
        /// <param name="loggingType"></param>
        /// <param name="ex"></param>
        public static void LogException(string message, LoggingType loggingType, Exception ex)
        {
            if (logger != null)
            {
                StackTrace stackTrace = new StackTrace();           // get call stack
                StackFrame[] stackFrames = stackTrace.GetFrames();

                switch (loggingType)
                {
                    case LoggingType.Fatal:
                        logger.Fatal(stackFrames[1].GetMethod() + " - " + message, ex);
                        break;
                    case LoggingType.Error:
                        logger.Error(stackFrames[1].GetMethod() + " - " + message, ex);
                        break;
                    case LoggingType.Debug:
                        logger.Debug(stackFrames[1].GetMethod() + " - " + message, ex);
                        break;
                    case LoggingType.Warning:
                        logger.Warn(stackFrames[1].GetMethod() + " - " + message, ex);
                        break;
                    case LoggingType.Information:
                        logger.Info(stackFrames[1].GetMethod() + " - " + message, ex);
                        break;
                    default: //Default as warning...
                        logger.Info(stackFrames[1].GetMethod() + " - " + message, ex);
                        break;
                }
            }
        }

        #endregion Core Methods

    }


    /// <summary>
    /// Types of logging allowed on log4net
    /// </summary>
    public enum LoggingType
    {
        /// <summary>
        /// Fine-grained informational events that 
        /// are most useful to debug an application.
        /// </summary>
        Debug,
        /// <summary>
        /// Successful informational messages that 
        /// highlight the progress of the application at coarse-grained level.
        /// </summary>
        Information,
        /// <summary>
        /// Potentially harmful situations.
        /// </summary>
        Warning,
        /// <summary>
        /// Error events that might still allow the 
        /// application to continue running.
        /// </summary>
        Error,
        /// <summary>
        /// Very severe error events 
        /// that will presumably lead the application to abort.
        /// </summary>
        Fatal
    }

}
