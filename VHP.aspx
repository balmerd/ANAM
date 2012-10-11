<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Veterans History Project" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<img src="/images/vhp.gif" width="591" height="131" alt="" style="border:1px solid #666;" />
	<div style="margin-top:1em;">
		<p>The Alameda Naval Air Museum has been designated an official Partner Archive for the national Veterans History Project by the <a href="http://www.loc.gov/vets/" target="_blank"> Library of Congress</a>. The purpose of the Veterans History Project is to document and permanently archive the wartime service experiences of veterans and civil workers.</p>
		<p>As an official archive for the Project, the Museum will conduct videotaped interviews, and collect memoirs, personal artifacts, and other original materials from veterans of World War II, the Korean, Vietnam, and Persian Gulf Wars and the Afghanistan and Iraq conflicts for preservation in Washington, D.C.. The museum has also expanded the scope of subjects to include those who served and worked at the Alameda Naval Air Station at anytime during its operation between 1940 and 1997. In addition, members of the local community are asked to share their own remembrances of the base or family members who served. Archival materials are also welcome.</p>
		<p><span class="narrative">"As a veteran of World War II, I understand the urgency of the Veterans History Project. Most of us are in our 80's now. The reality is we won't be around much longer to tell the story of our wartime service,"</span> said Marilyn York, Museum Director. <span class="narrative">"Many young people don’t understand the tremendous sacrifices that were made by their own grandparents and relatives. It's critical that we act now to preserve the lessons of history for future generations of Americans."</span></p>
		<p>Service veterans and those U.S. citizen civilians who were actively involved in supporting war efforts (such as war industry workers, USO workers, flight instructors, medical volunteers, etc.) are encouraged to contribute their personal narratives. 
		For more information or to schedule an interview, please contact the museum at 510-522-4262, or via e-mail at <%=ANAM.MailUtil.ObfuscateEmail("info@alamedanavalairmuseum.org")%>. Interviews are normally conducted two Sunday's per month or by special arrangement.</p>
		<p>Interested parties should print the VHP Biographical Data Form and return it to the Alameda Naval Air Museum prior to their interview.</p>
		<div id="buttonfromjavascript"></div>
		<!--div style="margin-top:1em;">The following dates are currently available:<br />
			<ul>
				<li>Jun 14, 2009</li>
			</ul>
		</div-->
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.util.Event.onContentReady("buttonfromjavascript", function() {
			var btn= new YAHOO.widget.Button({
				type: "link", 
				id: "btnVHP", 
				label: "Click here for the VHP Biographical Data Form", 
				href: "/Forms/VHP.aspx", container: "buttonfromjavascript"
			});
		});
	</script>
</asp:Content>
