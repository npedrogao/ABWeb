using Core.Logging;
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
                TJ21Transaction tr = new TJ21Transaction();
                TJ21Filter input = new TJ21Filter()
                {
                    Ceventotit = "           "
                    //Cestado = "A",
                    //Cisin = "IE00B43VK078",
                    //Codvalor = "0000000000000",
                    //Cproduto = "  ",
                    //Csubprod = "  "
                    //Ddiaevento_CH = "30032017",
                    //Dfimevento = "2017-04-27"
                    //Dinievento = "24.11.2014",
                    //Zseqvento_CH = "000"
                };

                tr = StaticServiceProxy.GetInstance().GetBCDWSServiceClient().TJ21EventosConsultaLista(input);

                bool lastPage = tr.LastPage;

                TransactionError erro = tr.Erro;
                int codigoErro;
                string mensagemErro;
                if (erro != null)
                {
                    codigoErro = erro.CodigoErro;
                    mensagemErro = erro.MensagemErro;
                }

                string campoErro = tr.CampoErro;
                TJ21Output tj21Out = tr.Output;

                bool pageTransaction = tr.PagedTransaction;
                PageResultMode pageResultMode = tr.PageMode;
                TJ21Row[] rows = tr.Rows;

                foreach (TJ21Row row in tr.Rows)
                {
                    string cestado = row.Cestado_l_l;
                }
                double timeFacade = tr.TimeFacade;
                double timeWebMethod = tr.TimeWebMethod;
                string userId = tr.UserId;
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