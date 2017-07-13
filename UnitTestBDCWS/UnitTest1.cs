using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestBDCWS
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            BarclaysBTS barclaysBTS = new BarclaysBTS("http://bpcfsptln197.corebus2.barclays.org:8100/bcdws/bcdws.asmx");

            #region AUTENTICACAO

            BarclaysBankAccountSettings settings = new BarclaysBankAccountSettings()
            {
                ApplicationID = "CPWSClone", //fixo
                UserRequester = @"Corebus2\nuno.cp.ibm", //utilizador
                ClientName = "B018" //maquina onde esta a correr a AB
            };

            barclaysBTS.BarclaysBankAccountSettingsValue = settings;

            #endregion

            #region CL01
            CL01Filter cl = new CL01Filter()
            {
                NumeroCliente = 0001012,
            };
            CL01Transaction cl01 = new CL01Transaction();
            cl01 = barclaysBTS.ObterDadosBasicosParticularesCL01(cl);
            #endregion

            #region TJ21
            TJ21Filter input = new TJ21Filter()
            {
                Ceventotit = "92760006090",
                //"92760006090"            
                Cestado = "A",
                Cisin = "IE00B43VK078",
                //Codvalor = "0000000000000",
                //Cproduto = "  ",
                //Csubprod = "  "
                //Ddiaevento_CH = "30032017",
                Dfimevento = "2017-04-27"
                //Dinievento = "24.11.2014",
                //Zseqvento_CH = "000"
            };        
            TJ21Transaction tr = new TJ21Transaction();
            try
            {
                tr = barclaysBTS.TJ21EventosConsultaLista(input);

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
                System.Diagnostics.Debug.WriteLine(soapEx.Message);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
            #endregion
        }
    }
}
