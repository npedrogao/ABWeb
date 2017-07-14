using Core.DataWrapper;
using Core.Logging;
using Core.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue
{
    public partial class DefaultMaster : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            int port;
            string userAB = Request.QueryString["cCodUtilza"];
            bool validUserId = false;
            string balcao = Request.QueryString["cBalcao"];
            string terminal = Request.QueryString["cTerminal"];
            string transacao = Request.QueryString["transacao"];

            CatalogueModel.Terminal = terminal;

            try
            {
                //   NL 21/11/16 - Bug no redirect na construção da query string>>
                string o_host = null;
                o_host = Request.QueryString["host"];

                string hostip = null;
                if (Request.QueryString["hostip"] != null)
                    hostip = Request.QueryString["hostip"];
                //<< NL 21/11/16 - Bug no redirect na construção da query string

                //   NL 28/10/16 - Parâmetro adicionar no URL para o hostip>>
                string host = null;

                if (Request.QueryString["hostip"] != null)
                    host = Request.QueryString["hostip"];
                else
                    host = Request.QueryString["host"];
                //<< NL 28/10/16 - Parâmetro adicionar no URL para o hostip 

                Int32.TryParse(Request.QueryString["port"], out port);
                string chave = Request.QueryString["ABSessionId"];

                if (!IsPostBack)
                {

                    DataAccess dl = new DataAccess();
                    DataTable dtResult = new DataTable();
                    dtResult = dl.GetDataByProjectAndType("ValidaUserId", 00, DataAccess.BRANCHPTCONN);
                    if (bool.TryParse(dtResult.Rows[0]["PR_SUBVALOR"].ToString(), out validUserId) && validUserId)
                    {

                        //   NL 27/10/16 - Informação de Login por ActiveX>>
#if USE_ACTIVEX
                        string userId = null;

                        if ((Session["clientUserName"] != null) && (Session["clientDomainName"] != null))
                            userId = Session["clientDomainName"] + "\\" + Session["clientUserName"];

#if DEBUG
                        Debug.Assert(userId != null);
#endif // DEBUG

                        if (userId == null)
                            userId = Request.LogonUserIdentity.Name;

#if DEBUG
                        Debug.Assert(userId != null);
#endif // DEBUG

#else
                        string userId = Request.LogonUserIdentity.Name;
#endif // USE_ACTIVEX
                        //<< NL 27/10/16 - Informação de Login por ActiveX


                        string[] loginAD = userId.Split('\\');
                        //Verifica se o utilizador é válido em função do user AB e do login


                        DataTable dt = dl.GetDataByUserAB(userAB, DataAccess.MASTERCONN);
                        if (!(dt.Rows.Count > 0 &&
                         dt.Rows[0]["CDOMINIO"].ToString().ToLower() == loginAD[0].ToLower() &&
                         dt.Rows[0]["CUSERNAME"].ToString().ToLower() == loginAD[1].ToLower()))
                        {
                            //   NL 21/11/16 - Bug no redirect na construção da query string>>
                            string sHostIpQS = "";
                            if (hostip != null)
                                sHostIpQS = "&hostip=" + hostip;

                            string url = string.Format("ErrorRestrictedAccess.aspx?cBalcao={0}&cTerminal={1}&cCodUtilza={2}&host={3}&port={4}&ABSessionId={5}&transacao={6}{7}",
                            balcao, terminal, userAB, o_host, port, chave, transacao, sHostIpQS);

                            //string url = string.Format("ErrorRestrictedAccess.aspx?cBalcao={0}&cTerminal={1}&cCodUtilza={2}&host={3}&port={4}&ABSessionId={5}&transacao={6}",
                            //balcao, terminal, userAB, host, port, chave, transacao);
                            //<< NL 21/11/16 - Bug no redirect na construção da query string

                            //--Response.Redirect(url);
                            Response.Redirect(url, false); //-- JFI Avoid ThreadAbort Exception
                            Context.ApplicationInstance.CompleteRequest(); //-- JFI Avoid ThreadAbort Exception
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                LogUtils.Error(ex);
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }
            
    }
}