<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - From the Tower" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="cpHeadContent" ContentPlaceHolderID="cphead" runat="server">
	<style type="text/css">
		@font-face {
			font-family: 'SpecialEliteRegular';
			src: url('Styles/WebFonts/SpecialElite-webfont.eot');
			src: url('Styles/WebFonts/SpecialElite-webfont.eot?#iefix') format('embedded-opentype'),
				 url('Styles/WebFonts/SpecialElite-webfont.ttf') format('truetype'),
				 url('Styles/WebFonts/SpecialElite-webfont.svg#SpecialEliteRegular') format('svg');
			font-weight: normal;
			font-style: normal;
		}
		#paper {
			font: 15px 'SpecialEliteRegular', Arial, sans-serif;letter-spacing: 0;
			line-height: 1.25em;
		}
		#paper .top {
			height: 131px;
			font-size: 18px;
			background: #fff url("images/paper-top-780.png") no-repeat top left;
		}
		#paper .middle {
			height: auto;;
			background: #fff url("images/paper-middle-780.png") repeat-y top left;
		}
		#paper .bottom {
			height: 218px;
			background: #fff url("images/paper-bottom-780.png") no-repeat top left;
		}
		#paper .inner {
			padding: 2em;
		}
		#paper .top .inner {
			padding-top: 3em;
		}
		#paper .middle .inner {
			padding-top: 1em;
		}
	</style>
</asp:Content>

<asp:Content ID="cpMainContent" ContentPlaceHolderID="cpMain" Runat="Server">
	<div id="paper">
		<div class="top">
			<div class="inner">Members and Friends of the Alameda Naval Air Museum,</div>
		</div>
		<div class="middle">
			<div class="inner">
				<p>You are cordially invited to attend the 2012 Annual General Membership meeting of the Alameda Naval Air Museum to be held at 2:00 PM on Sunday, February 12, 2012.</p>
				<p>As an important part of the Museum’s future, you will have the opportunity to hear our Five Point Plan for strengthening our current position, building for a sustainable future, and expanding our mission to preserve the history of NAS Alameda and Alameda Point. It’s also an opportunity to provide direct feedback to me and the Board of Directors.</p>
				<p>I look forward to the opportunity to meet with you in person and hope to see you on Sunday the 12th of February.</p>
			</div>
		</div>
		<div class="bottom">
			<div class="inner">
				<p>Best regards,</p>
				<p>Kin Robles</p>
				<p>Chairman</p>
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
