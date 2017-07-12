using CommonLib.Log;
using System.Data;

namespace ABWebCatalogue.App_Code
{
    public class UserProfile
    {
        private string transacao;
        private string cBalcao;
        private string cCodUtilza;
        private int abSessionId;
        private string perfil;
        private string userAB;
        private string domain;
        private string businessUnit;
        private string terminal;
        private bool citrix;
        private string oHost;
        private string hostIp;
        private string host;
        private int port;
        private string chave;
        private bool accessDenied;

        public string Balcao { get { return cBalcao; } internal set { cBalcao = value; } }
        public string BusinessUnit { get { return businessUnit; } internal set { businessUnit = value; } }
        public string UserAB { get { return userAB; } internal set { userAB = value; } }
        public int ABSesisonId { get { return abSessionId; } internal set { abSessionId = value; } }
        public string Terminal { get { return terminal; } internal set { terminal = value; } }
        public bool Citrix { get { return citrix; } internal set { citrix = value; } }
        public string Transaction { get { return transacao; } internal set { transacao = value; } }
        public string Perfil { get { return perfil; } internal set { perfil = value; } }
        public string OHost { get { return oHost; } internal set { oHost = value; } }
        public string HostIp { get { return hostIp; } internal set { hostIp = value; } }
        public string Host { get { return host; } internal set { host = value; } }
        public int Port { get { return port; } internal set { port = value; } }
        public string Chave { get { return chave; } internal set { chave = value; } }
        public bool AccessDenied { get { return accessDenied; } set { accessDenied = value; } }
        public string Domain { get { return domain; } internal set { domain = value; } }

        public UserProfile(string pTransacao, string pBalcao, string pCodUtilza, string pHost, string pPort, string pABSessionId, string pPerfil, string pUserAB, string pDomain, string pHostIp, string pTerminal)
        {
            this.transacao = pTransacao;
            this.cBalcao = pBalcao;
            this.cCodUtilza = pCodUtilza;
            this.host = pHost;
            int.TryParse(pPort, out this.port);
            int.TryParse(pABSessionId, out this.abSessionId);
            this.perfil = pPerfil;
            this.userAB= pUserAB;
            this.domain = pDomain;
            this.hostIp = pHostIp;
            this.Terminal = pTerminal;
            this.AccessDenied = false;
        }

        public UserProfile()
        {
            this.AccessDenied = true;
        }
    }
}