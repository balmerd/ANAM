<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - How to Get Involved" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>The Alameda Naval Air Museum Wants You!</h1>

	<p>Would you like to participate in preserving the history of NAS Alameda and the rich aviation history of Alameda Point? 
	If so, the Alameda Naval Air Museum has many volunteer opportunities for dedicated individuals. 
	Volunteers of all ages who possess specific skills and interests are welcome to apply. 
	The Alameda Naval Air Museum is registered with the State of California as a non-profit 501(c)(3) organization.</p>

	<p>For more information, please contact Kin Robles at 925-759-2090 or via E-Mail at <%=ANAM.MailUtil.ObfuscateEmail("anammedia@mac.com")%></p>

	<div class="module">
		<div class="hd">Volunteer Positions</div> 
		<div class="bd">
			<table style="width:100%; padding:2px 2px 0 2px;">
				<tr style="vertical-align: top;">
					<td style="border-style:none;">
						<b>Administration</b>
						<ul>
							<!--li>Office Manager (filled by Charlene Parry)</li-->
							<li>Secretary</li>
							<li>Transcriber</li>
							<li>Membership Manager</li>
							<li>Program Manager</li>
							<!--li><a href="http://alameda.patch.com/announcements/volunteer-program-manager" target="_blank">Volunteer Program Manager (filled by Tom Meehan)</a></li-->
						</ul>
						<b>Archive & Preservation</b>
						<ul>
							<li>Librarian</li>
							<li>Researcher</li>
							<li>Archivist</li>
						</ul>
						<b>Fundraising</b>
						<ul>
							<li>Fundraising Manager</li>
							<li><a href="http://alameda.patch.com/announcements/grant-writer-for-non-profit-museum" target="_blank">Grant Writer</a></li>
							<li>Associate Fundraiser</li>
							<li>Gift Shop Sales Associate</li>
						</ul>
					</td>
					<td style="border-style:none;">
						<b>Public Relations and Marketing</b>
						<ul>
							<li>Photographer</li>
							<li>Videographer</li>
							<li>Graphic Artist</li>
							<li>Copywriter</li>
							<li>Computer Animation Artists Illustrator</li>
						</ul>
						<b>Operations</b>
						<ul>
							<li>Docent</li>
							<li>Project Manager</li>
							<li>Computer Aided Drafting (CAD) Designer </li>
							<li>Cabinet Maker</li>
							<li>Carpenter</li>
							<li>Gardener</li>
							<li>Handyman</li>
							<li>Custodian</li>
						</ul>
						<b>Technology</b>
						<ul>
							<li>Computer Technician</li>
						</ul>
					</td>
				</tr>
			</table>
		</div> 
	</div>
	<br /> <br /> <br /> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
