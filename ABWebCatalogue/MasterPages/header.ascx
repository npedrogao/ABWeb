﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="ABWebCatalogue.MasterPages.header" %>
<script type="text/javascript">
	function detectIE() {
		var ua = window.navigator.userAgent;

		var msie = ua.indexOf('MSIE ');
		if (msie > 0) {
			// IE 10 or older => return version number
			return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
		}

		var trident = ua.indexOf('Trident/');
		if (trident > 0) {
			// IE 11 => return version number
			var rv = ua.indexOf('rv:');
			return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
		}

		var edge = ua.indexOf('Edge/');
		if (edge > 0) {
		   // Edge (IE 12+) => return version number
		   return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
		}

		// other browser
		return false;
	}

</script>
<table width="100%">
    <tr>
        <td>
            <img id="logo" runat="server" src="~/images/logo.png" />
        </td>
        <td align="right" style="height: 56px">
            <font style='font-family:Bankinter;font-size:16px;' color="#63544A">Caraterização Produtos&nbsp;&nbsp;</font>
        </td>
    </tr>
    <tr>
        <td colspan="2">
			<script type="text/javascript">
			if (detectIE()==11) {document.write("<hr style='color:#F56600;background:#F56600;border:none;height:0.5px;' />")}
			else{document.write("<hr style='color:#F56600;background:#F56600;border:none;height:1px;' />")}
			</script>
            <asp:Label ID="Label1" runat="server"  Text="V1.6.3" style="color:#CCCCCC"></asp:Label>    			
        </td>
    </tr>
</table>
