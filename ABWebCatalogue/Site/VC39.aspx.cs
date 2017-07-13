using Core.Models;
using Core.WebExtensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABCatalogue.Site
{
    public partial class VC39 : System.Web.UI.Page
    {
        string type;
        VC39Model model = new VC39Model();

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
                        lblTransaction.Text = "VC39A";

                        txtProd.Text = model.Cpro;
                        txtSubProd.Text = model.Spro;
                        txtName.Text = model.Nome;

                        //Parametros Gerais
                        txtTipo.Text = model.Tipo;
                        txtGtip.Text = model.Gtip;
                        txtCmoe.Text = model.Cmoe;
                        txtGmoe.Text = model.Gmoe;
                        txtCbal.Text = model.Cbal;
                        txtNcta.Text = model.Ncta;
                        txtCapo.Text = model.Capoano;
                        txtZapo.Text = model.Zapolice;
                        txtCeti.Text = model.Ccertif;
                        txtCera.Text = model.Ccerano;
                        txtCba1.Text = model.Cbalsaco;
                        txtNct1.Text = model.Cctasaco;
                        txtBank.Text = model.Cbannib;
                        txtBalc.Text = model.Cbalnib;
                        txtCnum.Text = model.Cnumnib;
                        txtDigc.Text = model.Cdignib;
                        txtQbas.Text = model.Qbascalc;
                        txtCseq.Text = model.Csequen;
                        txtQdec.Text = model.Qdeciups;
                        txtQprp.Text = model.Qpropval;
                        cmbDuti.Value = model.Ctipodias;
                        txtQalt.Text = model.Qaltmod;
                        txtProd.Text = model.Criscoprd;

                        //DURAÇÕES
                        txtQANOMIN.Text = model.Qanomin;
                        txtQMINDIA.Text = model.Qmindia;
                        txtQANOMAX.Text = model.Qanomax;
                        txtQMAXDIA.Text = model.Qmaxdia;
                        txtDVENCIM.Text = model.Dvencim;

                        //TAXAS e ENCARGOS
                        txtTBONEMP.Text = model.Tbonemp;
                        txtTCOMISS.Text = model.Tcomiss;
                        txtTPENTRFO.Text = model.Tpentrfo;
                        txtMRESGMIN.Text = model.Mresgmin;

                        //Atributos Investimento
                        txtSubFamilia.Text = model.SubFamilia;
                        txtSubFamiliaDesc.Text = model.SubFamiliaDesc;
                        txtLiquidez.Text = model.Liquidez;
                        txtComplexidade.Text = model.Complexidade;
                        txtComplexidadeDesc.Text = model.ComplexidadeDesc;
                        txtHorizonteTemporal.Text = model.HorizonteTemporal;
                        txtHorizonteTemporalDesc.Text = model.HorizonteTemporalDesc;
                        txtZonaGeografica.Text = model.ZonaGeografica;
                        txtZonaGeograficaDesc.Text = model.ZonaGeograficaDesc;
                        txtOnOffRegular.Text = model.OnOffRegular;
                        cmbIpad.Value = model.Ipad;
                        txtNivelRisco.Text = model.NivelRisco;
                        txtVaR.Text = model.VaR;

                        //TOMADOR e PESSOAS SEGURAS
                        txtQIDADMIN.Text = model.Qidadmin;
                        txtQIDADDEF.ID = model.Qidaddef;
                        txtQIDADMAX.Text = model.Qidadmax;
                        txtQIDADSUB.Text = model.Qidadsub;
                        txtNPESSSEG.Text = model.Npessseg;

                        //RESSEGURO / CUSTOS
                        txtCTRATADO.Text = model.Ctratado;
                        txtMACTA.Text = model.Mcacta;
                        txtMCAPOL.Text = model.Mcapol;

                        //COPERACS
                        ////txtCpremcli.Text = model.Cpremcli ;
                        ////txtCresgtcl.Text = model.Cresgtcl ;
                        ////txtCresgpcl.Text = model.Cresgpcl ;
                        ////txtCredtcl.Text  = model.Credtcl   ;
                        ////txtCredpcl.Text  = model.Credpcl   ;
                        ////txtCsincli.Text  = model.Csincli   ;
                        txtTPARESG1.Text = model.Tparesg1;
                        txtTPARESG2.Text = model.Tparesg2;
                        txtTPARESG3.Text = model.Tparesg3;
                        txtTPARESG4.Text = model.Tparesg4;
                        txtTPARESG5.Text = model.Tparesg5;
                        txtTPARESG6.Text = model.Tparesg6;
                        txtQANORES1.Text = model.Qanores1;
                        txtQANORES2.Text = model.Qanores2;
                        txtQANORES3.Text = model.Qanores3;
                        txtQANORES4.Text = model.Qanores4;
                        txtQANORES5.Text = model.Qanores5;
                        txtQANORES6.Text = model.Qanores6;
                        txtDPRESG1.Text = model.Dpresg1;
                        txtDPRESG2.Text = model.Dpresg2;
                        txtDPRESG3.Text = model.Dpresg3;

                        //CONTABILIDADE
                        txtCopersg.Text = model.Copersg;
                        cmbCopersgppp.Value = model.Copersgppp;
                        txtIcobppp.Text = model.Icobppp;

                        //FUNDO ASSOCIADO
                        txtSubpfund.Text = model.Subpfund;
                        txtCbalfund.Text = model.Cbalfund;
                        txtCtafundo.Text = model.Ctafundo;

                        //ENCARGOS de ALTERAÇÕES MODALIDADE
                        txtTencmod1.Text = model.Tencmod1;
                        txtTencmod2.Text = model.Tencmod2;
                        txtTencmod3.Text = model.Tencmod3;
                        txtTencmod4.Text = model.Tencmod4;
                        txtTencmod5.Text = model.Tencmod5;
                        txtTencmod6.Text = model.Tencmod6;
                        txtMencmod1.Text = model.Mencmod1;
                        txtMencmod2.Text = model.Mencmod2;
                        txtMencmod3.Text = model.Mencmod3;
                        txtMencmod4.Text = model.Mencmod4;
                        txtMencmod5.Text = model.Mencmod5;
                        txtMencmod6.Text = model.Mencmod6;

                        //PRORROGAMENTO
                        txtQprorrog.Text = model.Qprorrog;

                        //VALIDAÇÕES
                        cmbIvaldur.Text = model.Ivaldur;
                        cmbIvaldur.Text = model.Ibasecal;

                        //REVALIDAÇÃO de CAPITAL
                        txtItiporev.Text = model.Itiporev;
                        txtCtabrev.Text = model.Ctabrev;

                        //INDICADORES
                        txtImetresg.Text = model.Imetresg;
                        txtIcaptlz.Text = model.Icaptlz;

                        //INFORMAÇÃO para AUTOMATISMO
                        txtPvlsubs.Text = model.Pvlsubs;
                        txtIextraut.Text = model.Iextraut;
                        txtCcontsgc.Text = model.Ccontsgc;
                        txtCbalcsgc.Text = model.Cbalcsgc;
                        txtZclisgc.Text = model.Zclisgc;
                        txtCprodsgc.Text = model.Cprodsgc;
                        txtCsubpinv.Text = model.Csubpinv;
                        txtQipcval.Text = model.Qipcval;
                        txtCtipodipc.Text = model.Ctipodipc;

                        //TESTES CLINICOS
                        txtCgruptcln.Text = model.Cgruptcln;

                        //SUBSCRIÇÃO
                        txtCgruptcln.Text = model.Ienccap;

                        //PRODUTO ASSOCIADO
                        txtIprodass.Text = model.Iprodass;
                        txtCprodsgass.Text = model.Cprodsgass;
                        txtCsprdsgass.Text = model.Csprdsgass;
                        txtDprdass.Text = model.Dprdass;

                        //CALCULO DE JURO
                        txtIrecaljur.Text = model.Irecaljur;

                        //DPM
                        txtIdpm.Text = model.Idpm;



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

            model.Cpro = form.GetStr(txtProd.ID);
            model.Spro = form.GetStr(txtSubProd.ID);
            model.Nome = form.GetStr(txtName.ID);

            //Parametros Gerais
            model.Tipo = form.GetStr(txtTipo.ID);
            model.Gtip = form.GetStr(txtGtip.ID);
            model.Cmoe = form.GetStr(txtCmoe.ID);
            model.Gmoe = form.GetStr(txtGmoe.ID);
            model.Cbal = form.GetStr(txtCbal.ID);
            model.Ncta = form.GetStr(txtNcta.ID);
            model.Capoano = form.GetStr(txtCapo.ID);
            model.Zapolice = form.GetStr(txtZapo.ID);
            model.Ccertif = form.GetStr(txtCeti.ID);
            model.Ccerano = form.GetStr(txtCera.ID);
            model.Cbalsaco = form.GetStr(txtCba1.ID);
            model.Cctasaco = form.GetStr(txtNct1.ID);
            model.Cbannib = form.GetStr(txtBank.ID);
            model.Cbalnib = form.GetStr(txtBalc.ID);
            model.Cnumnib = form.GetStr(txtCnum.ID);
            model.Cdignib = form.GetStr(txtDigc.ID);
            model.Qbascalc = form.GetStr(txtQbas.ID);
            model.Csequen = form.GetStr(txtCseq.ID);
            model.Qdeciups = form.GetStr(txtQdec.ID);
            model.Qpropval = form.GetStr(txtQprp.ID);
            model.Ctipodias = form.GetStr(cmbDuti.ID);
            model.Qaltmod = form.GetStr(txtQalt.ID);
            model.Criscoprd = form.GetStr(txtProd.ID);

            //DURAÇÕES
            model.Qanomin = form.GetStr(txtQANOMIN.ID);
            model.Qmindia = form.GetStr(txtQMINDIA.ID);
            model.Qanomax = form.GetStr(txtQANOMAX.ID);
            model.Qmaxdia = form.GetStr(txtQMAXDIA.ID);
            model.Dvencim = form.GetStr(txtDVENCIM.ID);

            //TAXAS e ENCARGOS
            model.Tbonemp = form.GetStr(txtTBONEMP.ID);
            model.Tcomiss = form.GetStr(txtTCOMISS.ID);
            model.Tpentrfo = form.GetStr(txtTPENTRFO.ID);
            model.Mresgmin = form.GetStr(txtMRESGMIN.ID);
            //model.Tencges1 = form.GetStr();

            //Atributos Investimento
            model.SubFamilia = form.GetStr(txtSubFamilia.ID);
            model.SubFamiliaDesc = form.GetStr(txtSubFamiliaDesc.ID);
            model.Liquidez = form.GetStr(txtLiquidez.ID);
            model.Complexidade = form.GetStr(txtComplexidade.ID);
            model.ComplexidadeDesc = form.GetStr(txtComplexidadeDesc.ID);
            model.HorizonteTemporal = form.GetStr(txtHorizonteTemporal.ID);
            model.HorizonteTemporal = form.GetStr(txtHorizonteTemporalDesc.ID);

            model.ZonaGeografica = form.GetStr(txtZonaGeografica.ID);
            model.ZonaGeograficaDesc = form.GetStr(txtZonaGeograficaDesc.ID);
            model.OnOffRegular = form.GetStr(txtOnOffRegular.ID);
            model.Ipad = form.GetStr(cmbIpad.ID);
            model.NivelRisco = form.GetStr(txtNivelRisco.ID);
            model.VaR = form.GetStr(txtVaR.ID);

            //TOMADOR e PESSOAS SEGURAS
            model.Qidadmin = form.GetStr(txtQIDADMIN.ID);
            model.Qidaddef = form.GetStr(txtQIDADDEF.ID);
            model.Qidadmax = form.GetStr(txtQIDADMAX.ID);
            model.Qidadsub = form.GetStr(txtQIDADSUB.ID);
            model.Npessseg = form.GetStr(txtNPESSSEG.ID);

            //RESSEGURO / CUSTOS
            model.Ctratado = form.GetStr(txtCTRATADO.ID);
            model.Mcacta = form.GetStr(txtMACTA.ID);
            model.Mcapol = form.GetStr(txtMCAPOL.ID);

            //COPERACS
            ////model.Cpremcli = form.GetStr(txtCpremcli.ID);
            ////model.Cresgtcl = form.GetStr(txtCresgtcl.ID);
            ////model.Cresgpcl = form.GetStr(txtCresgpcl.ID);
            ////model.Credtcl = form.GetStr(txtCredtcl.ID);
            ////model.Credpcl = form.GetStr(txtCredpcl.ID);
            ////model.Csincli = form.GetStr(txtCsincli.ID);
            ////model.Cpremsoc = --
            model.Tparesg1 = form.GetStr(txtTPARESG1.ID);
            model.Tparesg2 = form.GetStr(txtTPARESG2.ID);
            model.Tparesg3 = form.GetStr(txtTPARESG3.ID);
            model.Tparesg4 = form.GetStr(txtTPARESG4.ID);
            model.Tparesg5 = form.GetStr(txtTPARESG5.ID);
            model.Tparesg6 = form.GetStr(txtTPARESG6.ID);
            model.Qanores1 = form.GetStr(txtQANORES1.ID);
            model.Qanores2 = form.GetStr(txtQANORES2.ID);
            model.Qanores3 = form.GetStr(txtQANORES3.ID);
            model.Qanores4 = form.GetStr(txtQANORES4.ID);
            model.Qanores5 = form.GetStr(txtQANORES5.ID);
            model.Qanores6 = form.GetStr(txtQANORES6.ID);
            model.Dpresg1 = form.GetStr(txtDPRESG1.ID);
            model.Dpresg2 = form.GetStr(txtDPRESG2.ID);
            model.Dpresg3 = form.GetStr(txtDPRESG3.ID);

            //CONTABILIDADE
            model.Copersg = form.GetStr(txtCopersg.ID);
            model.Copersgppp = form.GetStr(Copersgppp.ID);
            model.Icobppp = form.GetStr(txtIcobppp.ID);

            //FUNDO ASSOCIADO
            model.Subpfund = form.GetStr(txtSubpfund.ID);
            model.Cbalfund = form.GetStr(txtCbalfund.ID);
            model.Ctafundo = form.GetStr(txtCtafundo.ID);

            //ENCARGOS de ALTERAÇÕES MODALIDADE
            model.Tencmod1 = form.GetStr(txtTencmod1.ID);
            model.Tencmod2 = form.GetStr(txtTencmod2.ID);
            model.Tencmod3 = form.GetStr(txtTencmod3.ID);
            model.Tencmod4 = form.GetStr(txtTencmod4.ID);
            model.Tencmod5 = form.GetStr(txtTencmod5.ID);
            model.Tencmod6 = form.GetStr(txtTencmod6.ID);
            model.Mencmod1 = form.GetStr(txtMencmod1.ID);
            model.Mencmod2 = form.GetStr(txtMencmod2.ID);
            model.Mencmod3 = form.GetStr(txtMencmod3.ID);
            model.Mencmod4 = form.GetStr(txtMencmod4.ID);
            model.Mencmod5 = form.GetStr(txtMencmod5.ID);
            model.Mencmod6 = form.GetStr(txtMencmod6.ID);

            //PRORROGAMENTO
            model.Qprorrog = form.GetStr(txtQprorrog.ID);

            //VALIDAÇÕES
            model.Ivaldur = form.GetStr(txtIvaldur.ID);
            model.Ibasecal = form.GetStr(txtIvaldur.ID);

            //REVALIDAÇÃO de CAPITAL
            model.Itiporev = form.GetStr(txtItiporev.ID);
            model.Ctabrev = form.GetStr(txtCtabrev.ID);

            //INDICADORES
            model.Imetresg = form.GetStr(txtImetresg.ID);
            model.Icaptlz = form.GetStr(txtIcaptlz.ID);

            //INFORMAÇÃO para AUTOMATISMO
            model.Pvlsubs = form.GetStr(txtPvlsubs.ID);
            model.Iextraut = form.GetStr(txtIextraut.ID);
            model.Ccontsgc = form.GetStr(txtCcontsgc.ID);
            model.Cbalcsgc = form.GetStr(txtCbalcsgc.ID);
            model.Zclisgc = form.GetStr(txtZclisgc.ID);
            model.Cprodsgc = form.GetStr(txtCprodsgc.ID);
            model.Csubpinv = form.GetStr(txtCsubpinv.ID);
            model.Qipcval = form.GetStr(txtQipcval.ID);
            model.Ctipodipc = form.GetStr(txtCtipodipc.ID);

            //TESTES CLINICOS
            model.Cgruptcln = form.GetStr(txtCgruptcln.ID);

            //SUBSCRIÇÃO
            model.Ienccap = form.GetStr(txtCgruptcln.ID);

            //PRODUTO ASSOCIADO
            model.Iprodass = form.GetStr(txtIprodass.ID);
            model.Cprodsgass = form.GetStr(txtCprodsgass.ID);
            model.Csprdsgass = form.GetStr(txtCsprdsgass.ID);
            model.Dprdass = form.GetStr(txtDprdass.ID);

            //CALCULO DE JURO
            model.Irecaljur = form.GetStr(txtIrecaljur.ID);

            //DPM
            model.Idpm = form.GetStr(txtIdpm.ID);

        }
    }
}