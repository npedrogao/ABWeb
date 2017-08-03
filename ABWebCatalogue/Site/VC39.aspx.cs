using Core.Models;
using Core.Utils;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace ABWebCatalogue.Site
{
    public partial class VC39 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnClearKeys.HRef = WebUtil.GetPageRoot(this);

            StringBuilder js = new StringBuilder();
            string[] jsFunctionNames = new string[] { "fLookupCmbOnChange" };
            JsUtil.ExecJsFunction(Resources.jsRes.AccordionController, js);
            //JsUtil.ExecJsFunction(Resources.jsRes.LockUnlockField, js);
            JsUtil.ExecJsFunction(Resources.jsRes.changeTipoRev, js, cmbITIPOREV.ClientID, txtCTABREV.ClientID);

            JsUtil.InjectJsServerSide(this, js);

            CatalogueModel.ApplyModel(this, ref js, jsFunctionNames);

            string transaccao = Request.QueryString["transacao"];
            lblTransaction.Text = transaccao;

            if (IsPostBack)
            {
                pnlBtnSearch.AddClass("hidden");
                WebUtil.AddRemoveHidden(true, pnlVC, pnlBtn, pnlSearchContent);

                if (transaccao != null)
                {

                    TypeLoad(transaccao);
                }
            }
            LoadCombos();
        }

        private void TypeLoad(string transaccao)
        {
            lblTransaction.Text = transaccao;
            string type = transaccao.Substring(transaccao.Length - 1, 1);
            switch (type)
            {
                case "C":

                    break;
                case "M":
                    ReadOnlyCommonFields();

                    break;
                case "V":
                    Master.FindControl("CPH").Controls.SetReadonlyControls();

                    break;
                case "A":
                    Master.FindControl("CPH").Controls.SetReadonlyControls();

                    break;
                default:
                    break;
            }
        }

        protected void ReadOnlyCommonFields()
        {

        }

        private void LoadCombos()
        {
            cmbIvaldur.LoadWithList(IsPostBack, CatalogueModel.Ivaldur);
            cmbITIPOREV.LoadWithList(IsPostBack, CatalogueModel.Itiporev);
            //cmbIMETRESG.LoadWithList(IsPostBack, CatalogueModel.)
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            Master.FindControl("CPH").Controls.SetCleanField();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void btnCloseAll_Click(object sender, EventArgs e)
        {

        }

        protected void btnOpenAll_Click(object sender, EventArgs e)
        {

        }

        private void InjectJs(ref StringBuilder js)
        {

        }
    }
}