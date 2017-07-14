using Core.Models;
using System;
using Core.WebExtensions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCatalogue.Site
{
    public partial class TI96 : System.Web.UI.Page
    {
        string type;
        TI96Model model = new TI96Model();

        protected void Page_Load(object sender, EventArgs e)
        {
            type = Request.QueryString["type"];
            var form = Request.Form;

            switch (type)
            {
                case "C":
                    {
                        lblTransaction.Text = "VC39A";
                        break;
                    }
                case "M":
                case "V":
                    {
                        if (type == "V")
                        {
                            Master.FindControl("CPH").Controls.SetReadonlyControls();
                        }

                        break;
                    }
                case "A":
                    {
                        lblTransaction.Text = "VC39A";
                        break;
                    }
            }
        }

        protected void btnClean_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var form = Request.Form;

            model.Cprogramapc = form.GetStr(txtCprogramapc.ID);
            model.Zcliente = form.GetInt(txtZcliente.ID);
            model.Zemissao = form.GetInt(txtZemissao.ID);
            model.Mnomine = form.GetDec(txtMnomine.ID);
            model.Codban = form.GetInt(txtCodban.ID);
            model.Dcodban = form.GetStr(txtDcodban.ID);
            model.Codvalor = form.GetStr(txtCodvalor.ID);
            model.Nombrev = form.GetStr(txtNombrev.ID);
            model.Reactivar = form.GetStr(cmbReactivar.ID);
            model.Codisin = form.GetStr(txtCodisin.ID);
            model.Codsgc = form.GetStr(txtCodSGC.ID);
            model.Bolsgc = form.GetStr(txtBolsaSGC.ID);
            model.Ccustod = form.GetStr(txtCodisin.ID);
            model.Dcustod = form.GetStr(txtDcustod.ID);
            model.Camed = form.GetDec(txtCamed.ID);
            model.Moedaval = form.GetStr(txtMoedaval.ID);
            model.Ititdef = form.GetStr(cmbItitdef.ID);
            model.Nomin = form.GetDec(txtNomin.ID);
            model.Coddivi = form.GetStr(txtCoddivi.ID);
            model.Nemonica = form.GetStr(txtNemonica.ID);
            model.Lguarda = form.GetStr(txtLguarda.ID);
            model.Tiptitul = form.GetStr(cmbTiptitul.ID);
            model.Cbloombg = form.GetStr(txtCbloombg.ID);
            model.Ctipesc = form.GetStr(txtCtipesc.ID);
            model.Creuters = form.GetStr(txtCreuters.ID);
            model.Dercus = form.GetStr(cmbDercus.ID);
            model.Nif = form.GetStr(txtNif.ID);
            model.Cpaisemi = form.GetInt(txtCpaisemi.ID);
            model.Dpaisemi = form.GetStr(txtDpaisemi.ID);
            model.Lotemin = form.GetDec(txtLotemin.ID);
            model.Ititbal = form.GetStr(cmbItitbal.ID);
            model.Codpais = form.GetInt(txtCodpais.ID);
            model.Dpais = form.GetStr(txtDpais.ID);
            model.Ibantele = form.GetShtr(cmbIbantele.ID);
            model.Tcredito = form.GetDec(txtTcredito.ID);
            model.Segcart = form.GetStr(txtSegcart.ID);
            model.Dsegcart = form.GetStr(txtDsegcart.ID);
            model.Situaca = form.GetStr(txtSituaca.ID);
            model.Negociav = form.GetStr(cmbNegociav.ID);
            model.Fechactu = form.GetInt(txtFechactu.ID);
            model.Usuario = form.GetStr(txtUsuario.ID);
            model.Cbolsa01 = form.GetShtr(txtCbolsa01.ID);
            //model.Cbolsa02 = form.GetShtr(txtCbolsa02.ID);
            //model.Cbolsa03 = form.GetShtr(txtCbolsa03.ID);
            //model.Cbolsa04 = form.GetShtr(txtCbolsa04.ID);
            //model.Cbolsa05 = form.GetShtr(txtCbolsa05.ID);
            //model.Cbolsa06 = form.GetShtr(txtCbolsa06.ID);
            //model.Cbolsa07 = form.GetShtr(txtCbolsa07.ID);
            //model.Cbolsa08 = form.GetShtr(txtCbolsa08.ID);
            //model.Cbolsa09 = form.GetShtr(txtCbolsa09.ID);
            //model.Cbolsa10 = form.GetShtr(txtCbolsa10.ID);
            //model.Cbolsa11 = form.GetShtr(txtCbolsa11.ID);
            //model.Cbolsa12 = form.GetShtr(txtCbolsa12.ID);
            //model.Cbolsa13 = form.GetShtr(txtCbolsa13.ID);
            //model.Cbolsa14 = form.GetShtr(txtCbolsa14.ID);
            //model.Cbolsa15 = form.GetShtr(txtCbolsa15.ID);
            model.Tipint = form.GetStr(cmbTipint.ID);
            model.Itipemiss = form.GetStr(cmbItipemiss.ID);
            model.Interes = form.GetDec(txtInteres.ID);
            model.Desde = form.GetLng(txtDesde.ID);
            model.Exenc = form.GetDec(txtExenc.ID);
            model.Txprog = form.GetDec(txtTxprog.ID);
            model.Reten = form.GetDec(txtReten.ID);
            model.Przdprog = form.GetDec(txtPrzdprog.ID);
            model.Jurodliq = form.GetDec(txtJurodliq.ID);
            model.Basecalc = form.GetDec(txtBasecalc.ID);
            model.Icalcjur = form.GetStr(cmbIcalcjur.ID);
            model.Tjuro7 = form.GetDec(txtTjuro7.ID);
            model.Imensual = form.GetStr(cmbImensual.ID);
            model.Tipamor = form.GetStr(cmbTipamor.ID);
            model.Emis = form.GetStr(txtEmis.ID);
            model.Isinbp = form.GetStr(txtIsinbp.ID);
            model.Fproxa = form.GetStr(txtFproxa.ID);
            model.Cidabp = form.GetStr(txtCidabp.ID);
            model.Fprimc = form.GetStr(txtFprimc.ID);
            model.Fbancopt = form.GetStr(txtFbancopt.ID);
            model.Cupcorrc = form.GetStr(cmbCupcorrc.ID);
            model.Venc1 = form.GetStr(txtVenc1.ID);
            model.Venc2 = form.GetStr(txtVenc2.ID);
            model.Venc3 = form.GetStr(txtVenc3.ID);
            model.Venc4 = form.GetStr(txtVenc4.ID);


            //Warrants


        }
    }
}