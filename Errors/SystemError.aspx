<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" AutoEventWireup="true" 
	CodeFile="SystemError.aspx.cs" Inherits="ANAM.Web.UI.Errors_SystemError" Title="Alameda Naval Air Museum - System Error" %>
	
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h2>We're sorry, there has been a system error that is preventing us from showing you that page.</h2>
	<p>Our system administrator has been notified, and will correct the problem as soon as possible.</p>
	<asp:Panel ID="pnlErrorDetails" runat="server" Visible="true">
		<div style="padding:1em;">
			<h1>General Error</h1>
			<p><b class="blue">URL:</b> <asp:Literal ID="litURL" runat="server" /></p>
			<h2>Exception</h2>
			<p><b class="blue">Source:</b> <asp:Literal ID="litSource" runat="server" /></p>
			<p><b class="blue">Message:</b> <asp:Literal ID="litMessage" runat="server" /></p>
			<p><b class="blue">Stack Trace:</b> <asp:TextBox ID="txtStackTrace" runat="server" TextMode="MultiLine" Rows="20" Columns="100" /></p>
			<h2>Inner Exception</h2>
			<p><b class="blue">Source:</b> <asp:Literal ID="litInnerSource" runat="server" /></p>
			<p><b class="blue">Message:</b> <asp:Literal ID="litInnerMessage" runat="server" /></p>
			<p><b class="blue">Stack Trace:</b> <asp:TextBox ID="txtInnerStackTrace" runat="server" TextMode="MultiLine" Rows="20" Columns="100" /></p>
		</div>
	</asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
