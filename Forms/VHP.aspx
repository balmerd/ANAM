<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Veterans History Project" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<style type="text/css">
		@media print {
			#hd, #sidenav-content, #ft, #btnPrint { display: none; }
		}
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Veterans History Project</h1>
	<span id="btnPrint" class="yui-button">
		<span class="first-child">
			<button type="button">Click here to print this form</button>
		</span>
	</span>
	<img src="/images/vhp-form.jpg" width="683" height="810" alt="" style="margin:1em 0 0 2px; border:1px solid #666;" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.util.Event.onContentReady("btnPrint", function() {
			var btn = new YAHOO.widget.Button("btnPrint");
			btn.on("click", YAHOO.ANAM.Common.print); 
		});
	</script>
</asp:Content>
