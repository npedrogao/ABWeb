using Core.ServiceWrapper.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Core.ServiceWrapper
{
    public class ServiceProxy
    {
        ProxyHelper serviceProxy = ProxyConfig.GetProxyHelper("WcfServices");
        ProxyHelper bcdProxy = ProxyConfig.GetProxyHelper("BcdWs");

        BarclaysBTS barclaysBTS;
        //ServiceClient tatAdminService;
        Service tatAdminService;
        
        public BarclaysBTS GetBCDWSServiceClient()
        {

            if (barclaysBTS == null)
            {
                barclaysBTS = new BarclaysBTS(String.Format("{0}://{1}:{2}/{3}/bcdws.asmx", bcdProxy.Proto, bcdProxy.Url, bcdProxy.Port, bcdProxy.EndPointPrefix));
            }
            return barclaysBTS;
        }

        public Service GetTATAdminServiceClient()
        {

            if (tatAdminService == null)
            {
               tatAdminService = new Service(String.Format("{0}://{1}:{2}/Service.svc", serviceProxy.Proto, serviceProxy.Url, serviceProxy.Port));
            }
            return tatAdminService;
        }
    }
}
