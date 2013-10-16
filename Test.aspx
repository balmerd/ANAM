<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>
	
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	ANAMConnectionString: <%=ConfigurationManager.ConnectionStrings["ANAMConnectionString"]%>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
