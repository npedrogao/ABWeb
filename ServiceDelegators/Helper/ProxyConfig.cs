using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace ServiceDelegators.Helper
{
    public class ProxyConfig
    {
        static Dictionary<string, ProxyHelper> proxyList = new Dictionary<string, ProxyHelper>();

        public static ProxyHelper GetProxyHelper(string name) {
            try
            {
                if (proxyList.Count == 0)
                    ReadConfigFile();
                return proxyList[name];
            }
            catch (Exception ex) {
                throw ex;
            }
        }

        private static void ReadConfigFile()
        {
            XmlDocument connectionsFile = new XmlDocument();

            try
            {
                connectionsFile.Load(Properties.Settings.Default.WsProxyFileLocation);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            var connectionNodes = connectionsFile.SelectNodes("/configuration/services/add");

            string name, proto, url, port, endPointPrefix;

            foreach (XmlNode node in connectionNodes) {
                name = node.Attributes["name"].Value;
                proto = node.Attributes["proto"].Value;
                url = node.Attributes["url"].Value;
                port = node.Attributes["port"].Value;
                endPointPrefix = (node.Attributes["endPointPrefix"] != null) ? node.Attributes["endPointPrefix"].Value : String.Empty;
                
                proxyList.Add(name, new ProxyHelper()
                {
                    Proto = proto,
                    Url = url,
                    Port = port,
                    EndPointPrefix = endPointPrefix
                });
            }
        }
    }

    public class ProxyHelper {
        public string Proto { get; set; }
        public string Url { get; set; }
        public string Port { get; set; }
        public string EndPointPrefix { get; set; }
        public string ServiceName { get; set; }
    }
}
