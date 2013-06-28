<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Board of Directors" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="cpHeadContent" ContentPlaceHolderID="cphead" runat="server">
	<style type="text/css">
		.board {
			margin: 0.5em 0 0 2em;
			width: 40em;
		}
		.person-name {
			float: left;
			font-weight: bold;
			width: 15em;
		}
		.caption {
			font-size: 108%;
			font-weight: bold;
		}
		.caption div {
			font-weight: normal;
		}
	</style>
</asp:Content>

<asp:Content ID="cpMainContent" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Board of Directors</h1>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/musso-f.jpg" width="125" height="145" alt="" />
			<div class="caption">Frank Musso<div>Secretary</div></div>
		</div>
	</div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/sites-b.jpg" width="125" height="145" alt="" />
			<div class="caption">Billie Sites<div>Treasurer</div></div>
		</div>
	</div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/gayley-b.jpg" width="125" height="145" alt="" />
			<div class="caption">Betty Oliveri<div>&nbsp;<br /></div></div>
		</div>
	</div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/parry-b.jpg" width="125" height="145" alt="" />
			<div class="caption">Chief Bronson Parry<div>&nbsp;</div></div>
		</div>
	</div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/pirack-l.jpg" width="125" height="145" alt="" />
			<div class="caption">Larry Pirack<div>&nbsp;</div></div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/tubbs-a.jpg" width="125" height="145" alt="" />
			<div class="caption">Cmdr Alan Tubbs CGFC<div>&nbsp;</div></div>
		</div>
	</div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/wroebel-s.jpg" width="125" height="145" alt="" />
			<div class="caption">Sieg Wroebel<div>&nbsp;</div></div>
		</div>
	</div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/pedersen-b.jpg" width="125" height="145" alt="" />
			<div class="caption">Brett Pedersen<div>&nbsp;</div></div>
		</div>
	</div>
	<div class="clear"></div>

	<h1>Officers</h1>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/york-m.jpg" width="125" height="145" alt="" />
			<div class="caption">Marilyn York<div>Founder</div></div>
		</div>
	</div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/staff/baack-b.jpg" width="125" height="145" alt="" />
			<div class="caption">Barbara Baack<div>Founder</div></div>
		</div>
	</div>
	<div class="clear"></div>

	<h1 style="margin-top:0.5em;">Museum Staff</h1>
	<div class="board">
		<div><span class="person-name">Larry Pirack</span>Curator</div>
		<div><span class="person-name">Frank Musso</span>Events Coordinator</div>
		<div><span class="person-name">Sieg Wroebel</span>Acquisitions</div>
		<div><span class="person-name">Betty Oliveri</span>Gift Shop / Membership</div>
		<div><span class="person-name">Chief Bronson Parry</span>Community Outreach</div>
		<div><span class="person-name">Alan Tubbs</span>Military Liason</div>
		<div><span class="person-name">Brian McMahon</span>Advertising</div>
		<div><span class="person-name">David Balmer</span>Webmaster</div>
		<div><span class="person-name">William T. Larkins</span>Aviation Historian</div>
		<div><span class="person-name">Charlene Parry</span>Office Manager</div>
		<div><span class="person-name">Tom Meehan</span>Volunteer Program Manager</div>
	</div>

	<h1 style="margin-top:0.5em;">Operations Team</h1>
	<div class="board">
		<div><span class="person-name">Ray Gillardo</span>&nbsp;</div>
		<div><span class="person-name">Gwen Pirack</span>&nbsp;</div>
		<div><span class="person-name">Wayne Shannon</span>&nbsp;</div>
		<div><span class="person-name">Robert Stoffer</span>&nbsp;</div>
		<div><span class="person-name">Betty Wroebel</span>&nbsp;</div>
	</div>
	<div class="clear"></div>

	<h1 style="margin-top:0.5em;">Docent Team</h1>
	<div class="board">
		<div><span class="person-name">Audrey Tarver</span>&nbsp;</div>
		<div><span class="person-name">Bill Wilmoth</span>&nbsp;</div>
	</div>
	<div class="clear"></div>

	<h1 style="margin-top:0.5em;">Archive Team</h1>
	<div class="board">
		<div><span class="person-name">Bill Wallage</span>Archive Manager</div>
		<div><span class="person-name">John R. Harris</span>Historical Research Analyst</div>
		<div><span class="person-name">Lihn Ly</span>Transcription</div>
		<div><span class="person-name">Ben Mannix</span>Military Historian</div>
		<div><span class="person-name">Carol Chamberlain</span>Archive Analyst</div>
	</div>
	<div class="clear"></div>

	<h1 style="margin-top:0.5em;">Advisory Board</h1>
	<div class="board" style="margin-bottom:1em;">
		<div><span class="person-name">Capt. Joe Baker III</span>USN (Ret.)</div>
		<div><span class="person-name">Capt. Jim Dodge</span>USN (Ret.)</div>
		<div><span class="person-name">Capt. William E. Strain</span>USN (Ret.)</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
