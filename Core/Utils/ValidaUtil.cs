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
        public static bool IsValidField(string text, int inteiro, Models.CustomMaskEnum customMaskEnum)
        {
            bool valid = false;
            switch (customMaskEnum)
            {
                case Models.CustomMaskEnum.NULL:
                    break;
                case Models.CustomMaskEnum.HoraMinuto:
                    valid = ValidaMaskHora(text);
                    break;
                case Models.CustomMaskEnum.Decimal:
                    valid = ValidaMaskDecimal(text, inteiro);
                    break;
                default:
                    break;
            }

            return valid;
        }

        public static bool IsValidField(string text,  Models.CustomMaskEnum customMaskEnum)
        {
            return IsValidField(text, 0, customMaskEnum);
        }

        public static bool ValidaData(string text)
        {
            if (String.IsNullOrWhiteSpace(text))
                return false;

            string[] formats = { "yyyy/MM/dd", "dd/MM/yyyy" };

            DateTime expectedDate;

            if (!DateTime.TryParseExact(text.Trim(), formats, CultureInfo.InvariantCulture,
                                        DateTimeStyles.None, out expectedDate))
                return false;

            return true;
        }

        private static bool ValidaMaskHora(string text)
        {
            if (String.IsNullOrWhiteSpace(text))
                return false;

            DateTime time;

            if (!DateTime.TryParseExact(text.Trim(), "HH:mm", CultureInfo.InvariantCulture,
                                        DateTimeStyles.None, out time))
                return false;

            return true;
        }

        private static bool ValidaMaskDecimal(string text, int inteiro)
        {
            if (string.IsNullOrWhiteSpace(text) || inteiro < 1)
                return false;

            string [] splittedText = text.Trim().Replace(",", "" ).Split('.');

            if (splittedText[1].Length != inteiro)
                return false;

            return true;
        }
    }
}
