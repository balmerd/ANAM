<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - VA-304" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>VA-304 Attack Squadron 304</h1>
	<h2>Plan of the Day for 21 & 22 Feb 1981</h2>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/units/aircraft/va-304/plan.jpg" width="600" height="1011" alt="" />
		</div>
	</div>
	<div class="clear"></div>
	<div class="credit">
		<b>Credit:</b>Provided by Mr. Robert M. Cieri.
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
