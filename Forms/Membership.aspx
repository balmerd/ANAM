<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Membership Form" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<style type="text/css">
		@media print {
			#hd, #ft, #sidenav-content, #btnPrint  {
				display: none;
			}
			.yui-t1 #yui-main .yui-b {
				margin-left: 0;
			}
		}
		</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1 style="margin-bottom:1em;">Membership Form</h1>
	<span id="btnPrint" class="yui-button">
		<span class="first-child">
			<button type="button">Click here to print this form</button>
		</span>
	</span>
	<div style="margin-top:1em;">
		<img src="/images/membership-form-2013.jpg" width="700" height="755" style="border:1px solid #555;" />
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.util.Event.onContentReady("btnPrint", function() {
			var btn = new YAHOO.widget.Button("btnPrint");
			btn.on("click", YAHOO.ANAM.Common.print); 
		});
	</script>
</asp:Content>
