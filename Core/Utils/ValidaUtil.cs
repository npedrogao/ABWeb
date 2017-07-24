using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

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
                case Models.CustomMaskEnum.DiaMesAno:
                    valid = ValidaMaskData(text);
                    break;
                case Models.CustomMaskEnum.HoraMinuto:
                    valid = ValidaMaskHora(text);
                    break;
                case Models.CustomMaskEnum.Decimal:
                    break;
                default:
                    break;
            }

            return valid;
        }

        private static bool ValidaMaskData(string text)
        {
            string[] formats = { "yyyy/MM/dd", "dd/MM/yyyy" };

            DateTime expectedDate;

            if (!DateTime.TryParseExact(text.Trim(), formats, CultureInfo.InvariantCulture,
                                        DateTimeStyles.None, out expectedDate))
            {
                return false;
            }

            return true;
        }

        private static bool ValidaMaskHora(string text)
        {
            DateTime time = new DateTime(); // Passed result if succeed 

            if (DateTime.TryParseExact(text.Trim(), "HH:mm", CultureInfo.InvariantCulture,
                                        DateTimeStyles.None, out time))
            {
                return true;
            }
            else {
                return false;
            }
        }

        private static int ValidaMaskDecimal(string text, int inteiro)
        {
            throw new NotImplementedException();
        }
    }
}
