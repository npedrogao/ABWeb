
using Core.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace Core.DataWrapper
{
    public static class ManageConnections
    {
        private static Dictionary<string, string> connectionStringsList = new Dictionary<string, string>();

        public static string getConnectionString(string name)
        {
            try
            {
                if (connectionStringsList.Count == 0)
                {
                    //LoggingHelper.LogEvent("ReadFile", LoggingType.Debug);
                    //readConfigFile();
                    readAppConfig();
                }

                return connectionStringsList[name];
            }
            catch (Exception ex)
            {
                LoggingHelper.LogException("Unable to get connection string. ", LoggingType.Error, ex);
                throw ex;
            }
        }

        private static void readConfigFile()
        {
            LoggingHelper.LogEvent("ReadConfigFile", LoggingType.Debug);
            XmlDocument connectionsFile = new XmlDocument();
            try
            {
                connectionsFile.Load(Properties.Settings.Default.FileLocation);
            }
            catch (Exception ex)
            {
                LoggingHelper.LogException("Não foi possivel carregar o ficheiro com as ligações à BD", LoggingType.Error, ex);
                throw ex;
            }
            var connectionNodes = connectionsFile.SelectNodes("/configuration/connectionStrings/add");

            string connectionString = null, name = null;
            byte[] data = null;
            string[] conn = new string[2];

            foreach (XmlNode node in connectionNodes)
            {
                data = Convert.FromBase64String(node.Attributes["connectionString"].Value);
                connectionString = Encoding.UTF8.GetString(data);

                name = node.Attributes["name"].Value;
                connectionStringsList.Add(name, connectionString);
                LoggingHelper.LogEvent("ADD - " + name + " - " + connectionString, LoggingType.Debug);
            }
        }

        private static void readAppConfig() {
            connectionStringsList.Add(DataAccess.BRANCHPTCONN, Properties.Settings.Default.ConnectionStringABL);
            connectionStringsList.Add(DataAccess.MASTERCONN, Properties.Settings.Default.ConnectionStringMaster);
            connectionStringsList.Add(DataAccess.ABLCONN, Properties.Settings.Default.ConnectionStringABL);
        }
    }
}