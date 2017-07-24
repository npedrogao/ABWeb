using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Utils
{
    public static class ValidaUtil
    {
        public static bool IsValidField(string text, Models.CustomMaskEnum customMaskEnum)
        {
            bool valid = false;
            switch (customMaskEnum)
            {
                case Models.CustomMaskEnum.NULL:                    
                    break;
                case Models.CustomMaskEnum.AnoMesDia:
                    break;
                case Models.CustomMaskEnum.DiaMesAno:
                    break;
                case Models.CustomMaskEnum.HoraMinuto:
                    break;
                case Models.CustomMaskEnum.Decimal:
                    break;    
                default:
                    break;
            }

            return valid;
        }

        private static bool ValidaMaskAnoMesDia(string text)
        {
            throw new NotImplementedException();
        }

        private static int ValidaMaskDiaMesAno(string text)
        {
            throw new NotImplementedException();
        }

        private static int ValidaMaskHoraMinuto(string text, int inteiro)
        {
            throw new NotImplementedException();
        }

        private static int ValidaMaskDecimal(string text, int inteiro)
        {
            throw new NotImplementedException();
        }
    }
}
