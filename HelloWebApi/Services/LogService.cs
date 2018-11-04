using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HelloWebApi.Services
{
    public static class LogService
    {
        static ILogger _logger = null;
        static string _fileLogPath = null;

        /// <summary>
        /// Static logger object that can be used with ServiceHelpers
        /// </summary>
        public static ILogger Logger
        {
            get { return _logger; }
            set { _logger = value; }
        }

        public static string FileLogPath { get => _fileLogPath; set => _fileLogPath = value; }

        public static async Task FileLog(string url, int userId, LogLevelEnum level, int errorNumber, string message)
        {
            try
            {
                if (!string.IsNullOrEmpty(_fileLogPath) && System.IO.Directory.Exists(_fileLogPath))
                {
                    var fn = System.IO.Path.Combine(_fileLogPath, string.Format("Log{0:yyyyMMdd}.txt", DateTime.Today));
                    var logmsg = string.Format(
                        "{0:HHmmss} {1} {2} {3} {4} {5}\r\n",
                        DateTime.Now, url, userId, level, errorNumber, message
                        );
                    await System.IO.File.AppendAllTextAsync(fn, logmsg);
                }
            }
            catch (Exception ex)
            {
                //just throw away any exceptions generated here
            }
        }

        public static void Log(string url, int userId, LogLevelEnum level, int errorNumber, string message)
        {
            FileLog(url, userId, level, errorNumber, message);
            if (Logger == null) return;
            var msg = string.Format("{0} user:{1} error num:{2} {3}", url, userId, errorNumber, message);
            switch (level)
            {
                case LogLevelEnum.trace:
                    Logger.LogTrace(msg);
                    break;
                case LogLevelEnum.debug:
                    Logger.LogDebug(msg);
                    break;
                case LogLevelEnum.info:
                    Logger.LogInformation(msg);
                    break;
                case LogLevelEnum.warn:
                    Logger.LogWarning(msg);
                    break;
                
                case LogLevelEnum.error:
                default:
                    Logger.LogError(msg);
                    break;
            }

        }
    }
}
