using Core.Models;
using System;
using Core.WebExtensions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABWebCatalogue.Site
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

            //model.Cprogramapc = form.GetStr(txtCprogramapc.ID);
            //model.Zcliente = form.GetInt(txtZcliente.ID);
            //model.Zemissao = form.GetInt(txtZemissao.ID);
            //model.Mnomine = form.GetDec(txtMnomine.ID);
            //model.Codban = form.GetInt(txtCodban.ID);
            //model.Dcodban = form.GetStr(txtDcodban.ID);
            //model.Codvalor = form.GetStr(txtCodvalor.ID);
            //model.Nombrev = form.GetStr(txtNombrev.ID);
            //model.Reactivar = form.GetStr(cmbReactivar.ID);
            //model.Codisin = form.GetStr(txtCodisin.ID);
            //model.Codsgc = form.GetStr(txtCodSGC.ID);
            //model.Bolsgc = form.GetStr(txtBolsaSGC.ID);
            //model.Ccustod = form.GetStr(txtCodisin.ID);
            //model.Dcustod = form.GetStr(txtDcustod.ID);
            //model.Camed = form.GetDec(txtCamed.ID);
            //model.Moedaval = form.GetStr(txtMoedaval.ID);
            //model.Ititdef = form.GetStr(cmbItitdef.ID);
            //model.Nomin = form.GetDec(txtNomin.ID);
            //model.Coddivi = form.GetStr(txtCoddivi.ID);
            //model.Nemonica = form.GetStr(txtNemonica.ID);
            //model.Lguarda = form.GetStr(txtLguarda.ID);
            //model.Tiptitul = form.GetStr(cmbTiptitul.ID);
            //model.Cbloombg = form.GetStr(txtCbloombg.ID);
            //model.Ctipesc = form.GetStr(txtCtipesc.ID);
            //model.Creuters = form.GetStr(txtCreuters.ID);
            //model.Dercus = form.GetStr(cmbDercus.ID);
            //model.Nif = form.GetStr(txtNif.ID);
            //model.Cpaisemi = form.GetInt(txtCpaisemi.ID);
            //model.Dpaisemi = form.GetStr(txtDpaisemi.ID);
            //model.Lotemin = form.GetDec(txtLotemin.ID);
            //model.Ititbal = form.GetStr(cmbItitbal.ID);
            //model.Codpais = form.GetInt(txtCodpais.ID);
            //model.Dpais = form.GetStr(txtDpais.ID);
            //model.Ibantele = form.GetShtr(cmbIbantele.ID);
            //model.Tcredito = form.GetDec(txtTcredito.ID);
            //model.Segcart = form.GetStr(txtSegcart.ID);
            //model.Dsegcart = form.GetStr(txtDsegcart.ID);
            //model.Situaca = form.GetStr(txtSituaca.ID);
            //model.Negociav = form.GetStr(cmbNegociav.ID);
            //model.Fechactu = form.GetInt(txtFechactu.ID);
            //model.Usuario = form.GetStr(txtUsuario.ID);
            //model.Cbolsa01 = form.GetShtr(txtCbolsa01.ID);
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
            //model.Tipint = form.GetStr(cmbTipint.ID);
            //model.Itipemiss = form.GetStr(cmbItipemiss.ID);
            //model.Interes = form.GetDec(txtInteres.ID);
            //model.Desde = form.GetLng(txtDesde.ID);
            //model.Exenc = form.GetDec(txtExenc.ID);
            //model.Txprog = form.GetDec(txtTxprog.ID);
            //model.Reten = form.GetDec(txtReten.ID);
            //model.Przdprog = form.GetDec(txtPrzdprog.ID);
            //model.Jurodliq = form.GetDec(txtJurodliq.ID);
            //model.Basecalc = form.GetDec(txtBasecalc.ID);
            //model.Icalcjur = form.GetStr(cmbIcalcjur.ID);
            //model.Tjuro7 = form.GetDec(txtTjuro7.ID);
            //model.Imensual = form.GetStr(cmbImensual.ID);
            //model.Tipamor = form.GetStr(cmbTipamor.ID);
            //model.Emis = form.GetStr(txtEmis.ID);
            //model.Isinbp = form.GetStr(txtIsinbp.ID);
            //model.Fproxa = form.GetStr(txtFproxa.ID);
            //model.Cidabp = form.GetStr(txtCidabp.ID);
            //model.Fprimc = form.GetStr(txtFprimc.ID);
            //model.Fbancopt = form.GetStr(txtFbancopt.ID);
            //model.Cupcorrc = form.GetStr(cmbCupcorrc.ID);
            //model.Venc1 = form.GetStr(txtVenc1.ID);
            //model.Venc2 = form.GetStr(txtVenc2.ID);
            //model.Venc3 = form.GetStr(txtVenc3.ID);
            //model.Venc4 = form.GetStr(txtVenc4.ID);

            //Warrants
            //model.Itipowar = form.GetStr(cmbItipowar.ID);
            //model.Iestwar = form.GetStr(cmbIestwar.ID);
            //model.Itipexer = form.GetStr(cmbItipexer.ID);
            //model.Feadmiss = form.GetStr(txtFeadmiss.ID);
            //model.Feultneg = form.GetStr(txtFeultneg.ID);
            //model.Fevencim = form.GetStr(txtFevencim.ID);
            //model.Paridade = form.GetDec(txtParidade.ID);
            //model.Qlotemin = form.GetInt(txtQlotemin.ID);
            //model.Iactsubj = form.GetStr(cmbIactsubj.ID);
            //model.Nactsubj = form.GetStr(cmbNactsubj.ID);
            //model.Cmoesubj = form.GetStr(txtCmoesubj.ID);
            //model.Ctipoliq = form.GetStr(cmbCtipoliq.ID);
            //model.Strike = form.GetDec(txtStrike.ID);
            //model.Nemiten = form.GetStr(txtNemiten.ID);
            //model.Inominat = form.GetStr(cmbInominat.ID);



            //model.Nominn = form.GetStr(txtNominn.ID);
            //model.Cnatjur = form.GetStr(txtCnatjur.ID);
            //model.Cindpri = form.GetStr(txtCindpri.ID);
            //model.Cindsec = form.GetStr(txtCindsec.ID);
            //model.Tiretest = form.GetStr(txtTiretest.ID);
            //model.Pagrava = form.GetStr(txtPagrava.ID);
            //model.Etf = form.GetStr(txtEtf.ID);
            //model.Tprzinf = form.GetStr(txtTprzinf.ID);
            //model.Tprzsup = form.GetStr(txtTprzsup.ID);
            //model.Qprzinf = form.GetStr(txtQprzinf.ID);
            //model.Qprzsup = form.GetStr(txtQprzsup.ID);
            //model.Tindexante = form.GetStr(txtTindexante.ID);
            //model.Tspreadpc = form.GetStr(txtTspreadpc.ID);
            //model.Tarredond = form.GetStr(txtTarredond.ID);


            //PAPEL COMERCIAL
            //model.Tprzinf = form.GetDec(txtTprzinf.ID);
            //model.Tprzsup = form.GetDec(txtTprzsup.ID);
            //model.Qprzinf = form.GetInt(txtQprzinf.ID);
            //model.Qprzsup = form.GetInt(txtQprzsup.ID);
            //model.Tindexante = form.GetDec(txtTindexante.ID);
            //model.Tspreadpc = form.GetDec(txtTspreadpc.ID);
            //model.Tarredond = form.GetDec(txtTarredond.ID);
            //model.Tcambio = form.GetDec(txtTcambio.ID);
            //model.Dcambio = form.GetStr(txtDcambio.ID);

            //TAXA MULTIPLA
            //model.Txmin = form.GetDec(txtTxmin.ID);
            //model.Txmax = form.GetDec(txtTxmax.ID);

            //ATRIBUTOS DE INVESTIMENTO
            //model.Csubfam = form.GetStr(txtCsubfam.ID);
            
            //model.Cliquidprod = form.GetStr(txtCliquidprod.ID);
            //model.Ccomplexinv = form.GetStr(txtCcomplexinv.ID);
            //model.Dcomplexinv = form.GetStr(txtDcomplexinv.ID);
            //model.Chorizon = form.GetStr(txtChorizon.ID);
            //model.Dhorizon = form.GetStr(txtDhorizon.ID);
            //model.Czongeog = form.GetStr(txtCzongeog.ID);
            //model.Dzongeog = form.GetStr(txtDzongeog.ID);
            //model.Conoffregu = form.GetStr(cmbConoffregu.ID);
            //model.Cipad = form.GetStr(cmbCipad.ID);
            //model.Cnivelrisco = form.GetStr(txtCnivelrisco.ID);
            //model.Mvar = form.GetStr(txtMvar.ID);
            //model.Dvar = form.GetStr(txtDvar.ID);
            //model.Gobsrv = form.GetStr(txtGobsrv.ID);
            //model.Cclaacti = form.GetStr(txtCclaacti.ID);
            //model.Cclassrisc = form.GetStr(txtCclassrisc.ID);
            //model.Dtactiva = form.GetStr(txtDtactiva.ID);

        }
    }
}