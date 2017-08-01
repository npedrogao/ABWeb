using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Microsoft.Win32; 
namespace UnitTestBDCWS
{
    [TestClass]
    public class BarclaysBTSTest
    {
        [TestMethod]
        public void BarclaysBTSTestMethod1()
        {

            BarclaysBTS barclaysBTS = new BarclaysBTS("http://bpcfsptln197.corebus2.barclays.org:8100/bcdws/bcdws.asmx");

            #region SOAPHeader

            barclaysBTS.BarclaysBankAccountSettingsValue = new BarclaysBankAccountSettings()
            {
                ApplicationID = "CPWSClone",
                UserRequester = @"Corebus2\nuno.cp.ibm",
                ClientName = "B018"
            };

            #endregion

            try
            {
                string logon = barclaysBTS.Logon();

                #region CL01
                CL01Transaction cl01 = new CL01Transaction();

                CL01Filter cl = new CL01Filter()
                {
                    NumeroCliente = 1012
                };


                cl01 = barclaysBTS.ObterDadosBasicosParticularesCL01(cl);

                #endregion

                #region TJ21
                TJ21Transaction tr = new TJ21Transaction();
                TJ21Filter input = new TJ21Filter()
                {
                    Ceventotit = "35",
                    Cestado = "A",
                    Cisin = "IE00B43VK078",
                    Codvalor = "0000000000000",
                    Cproduto = "",
                    Csubprod = "",
                    Ddiaevento_CH = "30032017",
                    Dfimevento = "2017-04-28",
                    Dinievento = "2017-04-27",//24.11.2014
                    Zseqvento_CH = "000"
                };


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

                #endregion
            }
            catch (System.Web.Services.Protocols.SoapException soapEx)
            {
                System.Diagnostics.Debug.WriteLine(soapEx.Message);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
            finally
            {
                string logoff = barclaysBTS.Logoff();
            }          
        }
    }
}
