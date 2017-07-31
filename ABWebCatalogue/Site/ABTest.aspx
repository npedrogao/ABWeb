<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/DefaultMaster.Master" CodeBehind="ABTest.aspx.cs" Inherits="ABWebCatalogue.Site.ABTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="../js/commonAB.js"></script>
    <script src="../js/util.js"></script>
    <script src="../js/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="../js/bootstrap.js" type="text/javascript"></script>
    <script type="text/javascript">
        function lockUnlockField(cmbValue, cmbId, txtId) {
            if (cmbValue == $("#" + cmbId).val()) {
                $("#" + txtId).removeAttr('disabled');
            } else {
                $("#" + txtId).attr('disabled', 'disabled');
            }

        }


    </script>



    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="CPH" runat="server">

                        <div class="row form-group padding-row">
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblIRenovac" runat="server" class="col-lg-2 text-right lbl">Renovações Automáticas:</asp:Label>
                            <div class="col-lg-1">
                                <select id="cmbIRenovac" runat="server" class="form-control t-field-t"></select>
                            </div>
                        </div>
                        <div class="col-lg-6 ">
                            <asp:Label ID="lblQMAXREN" runat="server" class="col-lg-2 text-right lbl">Nr. Máximo Renovações:</asp:Label>
                            <div class="col-lg-1">
                                <asp:TextBox ID="txtQMAXREN" runat="server" CssClass="form-control t-field-t"></asp:TextBox>
                            </div>
                        </div>
                    </div>




        <script type="text/javascript">
        $(document).ready(function () {

            $("#CPH_cmbIRenovac").change(function () {
                lockUnlockField("S", "CPH_cmbIRenovac", "CPH_txtQMAXREN");
            });

 

        });

    </script>


        </asp:Content>