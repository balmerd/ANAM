<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Kids Corner" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Kids Corner</h1>
	<div style="height:1em;">&nbsp;</div>
	<div class="polaroid">
		<div class="bd">
			<a href="/kids/flight.pdf" target="_blank"><img src="/images/kids-flight.gif" width="444" height="550" alt="PDF file" style="border:none;" /></a>
		</div>
	</div>
	<div class="clear"></div>
	<br /> <br /> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
