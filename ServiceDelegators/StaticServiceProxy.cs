using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceDelegators.Delegator
{
    public class StaticServiceProxy
    {
        private static ServiceProxy instance;

        public static ServiceProxy GetInstance() {
            if (instance == null)
                instance = new ServiceProxy();
            return instance;
        }
    }
}
