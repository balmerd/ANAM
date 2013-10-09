<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" AutoEventWireup="true" 
	CodeFile="NotFound.aspx.cs" Inherits="ANAM.Web.UI.Errors_NotFound" Title="Alameda Naval Air Museum - Page Not Found" %>
	
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>We're sorry, the page you requested was not found.</h1>
	<p><asp:Literal ID="litRequestedPath" runat="server" /></p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
