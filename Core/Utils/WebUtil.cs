using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.HtmlControls;

namespace Core.Utils
{
    public static class WebUtil
    {
        public static void HideShowControls(Boolean visible, params System.Web.UI.Control[] ctrls)
        {
            foreach (var ctrl in ctrls)
            {
                ctrl.Visible = visible;
            }
        }

        public static void ChangeBtnAtt(Boolean b, HtmlButton btn)
        {
            if (b)
            {
                btn.Attributes.CssStyle.Remove("titleAccordion-plus");
                btn.Attributes.Add("class", "titleAccordion-less");
            }
            else
            {
                btn.Attributes.CssStyle.Remove("titleAccordion-less");
                btn.Attributes.Add("class", "titleAccordion-plus");
            }
        }
    }
}
