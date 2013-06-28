<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Partners Program" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>ANAM Partners Program</h1>
	<p>The Alameda Naval Air Museum is proud to partner with businesses and organizations within the community through the ANAM Partners Program. The program benefits both our museum membership and participating entities.</p>
	<p>ANAM members receive special privileges when they present valid ANAM membership cards during their visit to our Partners place of business or venue. In return, Partners have the opportunity to promote their own product offerings on our website and at the museum. It's a wonderful opportunity for everyone in the community to benefit and support our efforts to preserve the rich history of Alameda Point and those who served their country at NAS Alameda.</p>
	<p>Businesses and organization interested in joining the ANAM Partners program should contact Larry Pirack at 510-522-6440 or via E-Mail at <%=ANAM.MailUtil.ObfuscateEmail("backtothe40s@gmail.com")%>
	<div class="polaroid">
		<div class="bd">
			<a href="http://www.rosenblumcellars.com" target="_blank"><img src="/images/partners/rosenblum-cellers.jpg" width="500" height="162" alt="Rosenblum Cellars Winery" style="border:none;" /></a>
		</div>
	</div>
	<div class="clear"></div>
	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
