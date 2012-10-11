<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - VA-304" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>VA-304 Attack Squadron 304</h1>
	<h2>The Provider Vol. 3, No. 6 for June 1987</h2>
	<p style="margin-top:1em;">A-7B Corsair II donated by VA-304 to be displayed as the "Gate Guard" for the East Gate</p>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/publications/provider/1987/june-cover.jpg" width="686" height="854" alt="" />
		</div>
	</div>
	<div class="clear"></div>
	<div class="credit">
		<b>Credit:</b>Provided by Mr. Robert M. Cieri.
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
