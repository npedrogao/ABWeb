using Core.Logging;
using Core.Models;
using ServiceWrapper.Core.Delegator;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue.Site
{
    public partial class CA58 : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
          
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var lst = new List<CA58Item>();
                lst.Add(new CA58Item("Rendimento Fixo", "Obrigações", "Não", "Em Criação", "1310 - TITULOS", "ISIN TESTE", "clara.c.ibm", new DateTime(2015, 02, 05), null));
                lst.Add(new CA58Item("RE", "Obrigações", "Não", "Em Criação", "1310 - TITULOS", "ISIN TESTE", "clara.c.ibm", new DateTime(2015, 02, 05), null));
                lst.Add(new CA58Item("Rendimento Fixo", "Obrigações", "Não", "Em Criação", "1310 - TITULOS", "ISIN TESTE", "clara.c.ibm", new DateTime(2015, 02, 05), null));
                lst.Add(new CA58Item("ABC", "Obrigações", "Não", "Em Criação", "1310 - TITULOS", "ISIN TESTE", "clara.c.ibm", new DateTime(2015, 02, 05), null));
                lst.Add(new CA58Item("Rendimento Fixo", "Obrigações", "Não", "Em Criação", "1310 - TITULOS", "ISIN TESTE", "clara.c.ibm", new DateTime(2015, 02, 05), null));
                lst.Add(new CA58Item("DAS", "Obrigações", "Não", "Em Criação", "1310 - TITULOS", "ISIN TESTE", "clara.c.ibm", new DateTime(2015, 02, 05), null));
                rptLista.DataSource = lst;
                rptLista.DataBind();
            }
            catch (System.Web.Services.Protocols.SoapException soapEx)
            {
                LogUtils.Error(soapEx);
            }
            catch (Exception ex)
            {
                LogUtils.Error(ex);
            }
            finally
            {
                try
                {
                    StaticServiceProxy.GetInstance().GetBCDWSServiceClient().Logoff();
                }
                catch { }
            }
        }

        protected void btnCriar_Click(object sender, EventArgs e)
        {
            Response.Redirect(String.Format("Create.aspx?{0}", Request.QueryString.ToString()));
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            //ToDo
        }
    }
}