using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Utils
{
    public static class ConvertUtil
    {
        public static string InverteData(string text)
        {
            string [] date = text.Split('/');


            return date[2]+ "/" + date[1] + "/" + date[0];
        }
    }
}
