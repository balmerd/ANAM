<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - China Clipper Anniversary" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<asp:Content ID="cpHeadContent" ContentPlaceHolderID="cphead" runat="server">
</asp:Content>

<asp:Content ID="cpMainContent" ContentPlaceHolderID="cpMain" Runat="Server">
<h2>Alameda Naval Air Museum Commemorates 75th Anniversary of the First TransPacific Flight</h2>
<p><i>Living History Event to Recall “China Clipper” Departure From Alameda, CA on Historic Flight to Manila, PI</i></p>

<p>This excellent promotional video was created by Brian McMahon and narrated by our former Chairman, Kin Robles.</p>

<div style="margin-bottom:1em; padding:4px; background:#fff; border:4px solid #ddd; margin:10px auto; width:660px;">
    <embed src="/videos/ANAMC75.MOV" width="640" height="360" autoplay="true" controller="true" loop="false" pluginspage="http://www.apple.com/quicktime/" style="width:660px; height:370px; margin:1em auto 0.25em auto;"></embed>
    <div style="font-size:smaller;">Public service announcement video courtesy of <a href="http://www.brianink.com/" target="_blank">Brian, Ink.</a></div>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
