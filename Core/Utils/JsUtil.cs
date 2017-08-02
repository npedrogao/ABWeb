using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.HtmlControls;

namespace Core.Utils
{
    public static class JsUtil
    {
        public static void InjectJsServerSide(System.Web.UI.Page page, StringBuilder jsBuilder)
        {   
            var cs = page.ClientScript;
            //cs.RegisterClientScriptInclude(1.ToString(), "/js/jquery-1.8.3.js");
            //cs.RegisterClientScriptInclude(2.ToString(), "/js/bootstrap.js");
            //cs.RegisterClientScriptInclude(3.ToString(), "/js/commonAB.js");
            var js = new StringBuilder();
            AppendJsLib("/js/jquery-1.8.3.js", js);
            AppendJsLib("/js/bootstrap.js", js);
            AppendJsLib("/js/commonAB.js", js);

            js.Append(@"<script type=""text/javascript"">function JsServerSide(){").Append(jsBuilder.ToString()).Append("};");
            AppendJsDocumentReady("JsServerSide();", js);
            AppendJsScriptEnd(js);
            cs.RegisterStartupScript(page.GetType(), (new Guid()).ToString(), js.ToString() , false);
        }

        private static void AppendJsScriptStart(StringBuilder jsBuilder)
        {
            jsBuilder.Append(@"<script type=""text/javascript"">");
        }

        private static void AppendJsScriptEnd(StringBuilder jsBuilder)
        {
            jsBuilder.Append(@"</script>");
        }

        private static void AppendJsDocumentReady(string code, StringBuilder jsBuilder)
        {
            jsBuilder.Append("$(document).ready(function() {").Append(code).Append("});");
        }

        public static void AppendJsLib(string src, StringBuilder jsBuilder)
        {
            jsBuilder.Append(@"<script src=""").Append(src).Append(@""" type = ""text/javascript"" ></script>");
        }

        public static void ExecJsFunction(String methodName, StringBuilder jsBuilder, params string[] paramCol)
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
