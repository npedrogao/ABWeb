using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;

namespace Core.Utils
{

    public static class CastUtil
    {
        /// <summary>
        /// Inverte data com escapes.
        /// Ex: dd/MM/yyyy --> yyyy/MM/dd
        ///     yyyy/MM/dd --> dd/MM/yyyy
        /// </summary>
        /// <param name="text"></param>
        /// <returns>data invertida</returns>
        public static string InverteData(string text)
        {
            if (string.IsNullOrWhiteSpace(text) || !(text.Trim().Contains("/") || text.Trim().Contains("-")))
                return null;

            if (!ValidaUtil.ValidaData(text))
                return null;

            string[] date = text.Trim().Replace('-', '/').Split('/');

            return date[2] + "/" + date[1] + "/" + date[0];
        }

        /// <summary>
        /// Remove escapes da data.
        /// Ex: dd/MM/yyyy --> ddMMyyyy
        /// </summary>
        /// <param name="data"></param>
        /// <returns>data sem '/'</returns>
        public static string ToIntData(string text)
        {
            if (string.IsNullOrWhiteSpace(text) || !(text.Trim().Contains("/") || text.Trim().Contains("-")))
                return null;
            
            if (!ValidaUtil.ValidaData(text))
                return null;

            return text.Replace("-", "/").Replace("/", "");
        }

        /// <summary>
        /// Metodo auxiliar que inverte data do tipo inteiro.
        /// Ex: De yyyyMMdd --> ddMMyyyy
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public static string ToAnoMesDia(string text)
        {
            if (string.IsNullOrWhiteSpace(text) || (text.Trim().Contains("/") || text.Trim().Contains("-")))
                return null;

            DateTime expectedDate;

            if (!DateTime.TryParseExact(text.Trim(), "ddMMyyyy", CultureInfo.InvariantCulture,
                                        DateTimeStyles.None, out expectedDate))
                return null;

            return expectedDate.ToString("yyyyMMdd");
        }

        /// <summary>
        /// Metodo auxiliar que inverte data do tipo inteiro.
        /// Ex: yyyyMMdd --> ddMMyyyy
        /// </summary>
        /// <param name="text">data</param>
        /// <returns></returns>
        public static string ToDiaMesAno(string text)
        {
            if (string.IsNullOrWhiteSpace(text) || (text.Trim().Contains("/") || text.Trim().Contains("-")))
                return null;

            DateTime expectedDate;

            if (!DateTime.TryParseExact(text.Trim(), "yyyyMMdd", CultureInfo.InvariantCulture,
                                        DateTimeStyles.None, out expectedDate))
                return null;

            return expectedDate.ToString("ddMMyyyy");
        }
    }
}
