using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.HtmlControls;

namespace Core.Utils
{
    public static class JsUtil
    {
        public static void ExecJsFunction(StringBuilder jsBuilder, String methodName, params string[] paramCol)
        {
            string separ = string.Empty;
            jsBuilder.Append(methodName).Append("(");
            foreach (var param in paramCol)
            {
                jsBuilder.Append(separ).Append("'").Append(param).Append("'");
                separ = ",";
            }
            jsBuilder.Append(");");
        }
    }
}
