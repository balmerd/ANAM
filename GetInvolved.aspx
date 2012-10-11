<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - How to Get Involved" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>How to Get Involved</h1>

	<script type="text/javascript">
		var d = new Date();
		var i = (d.getTime() % 2) + 1; // alternate between 2 images
		document.writeln('<p><img src="/images/anam-needs-you-' + i + '.jpg" width="360" alt="Alameda Naval Air Museum Needs You!" /></p>');
	</script>
	
	<h2 style="margin-top:1em;">Membership</h2>
	<p>The Alameda Naval Air Museum is a non-profit organization and is not sponsered by or affiliated with the U.S. Navy. It is staffed by volunteers, many of whom are former civilian employees, navy friends and veterans.</p>
	<p>Memberships and donations pay for utilities, collecting and preserving artifacts, building exhibits, and community outreach programs. As bases continue to close, many artifacts, papers, photographs and collections may disappear. The chance to preserve the Naval Aviation history of the San Francisco Bay Area is NOW!</p>

	<span id="btnForm" class="yui-button">
		<span class="first-child">
			<button type="button">Click here for our Membership form</button>
		</span>
	</span>

	<h2 style="margin-top:1em;">Volunteers Needed!</h2>
	<p>Would you like to participate in preserving the history of NAS Alameda and the rich aviation history of Alameda Point? 
	If so, the Alameda Naval Air Museum has many volunteer opportunities for dedicated individuals. 
	Volunteers of all ages who possess specific skills and interests are welcome to apply. 
	The Alameda Naval Air Museum is registered with the State of California as a non-profit 501(c)(3) organization.</p>
	
	<p>For more information, please contact Kin Robles at 925-759-2090 or via E-Mail at <%=ANAM.MailUtil.ObfuscateEmail("anammedia@mac.com")%></p>	

	<span id="btnVolunteer" class="yui-button">
		<span class="first-child">
			<button type="button">Click here to see our Volunteer Positions</button>
		</span>
	</span>
	
	<p style="margin-top:1em;">
		The museum is open on Saturdays and Sundays from 10:00 AM to 4:00 PM. Additional
		archive hours are available by appointment Wednesdays, noon to 4:00 PM.</p>
	<p>
	
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.ANAM.Common.navigateMembership = function() { // hack
			window.location.href = "/Forms/Membership.aspx";
		}
		YAHOO.ANAM.Common.navigateVolunteer = function() { // hack
			window.location.href = "/Volunteer.aspx";
		}
		YAHOO.util.Event.onContentReady("btnForm", function() {
			var btn = new YAHOO.widget.Button("btnForm");
			btn.on("click", YAHOO.ANAM.Common.navigateMembership); 
			btn = new YAHOO.widget.Button("btnVolunteer");
			btn.on("click", YAHOO.ANAM.Common.navigateVolunteer); 
		});
	</script>
</asp:Content>
