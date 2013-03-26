<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" AutoEventWireup="true" 
	CodeFile="InMemory.aspx.cs" Inherits="ANAM.Web.InMemory" Title="Alameda Naval Air Museum - In Memory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<style type="text/css">
		table, tr, td {
			border-style: none;
		}
		.in-memory div {
			margin-bottom: 0.75em;
		}
		.in-memory .link {
			text-decoration: underline;
		}
	</style>
	<!--[if IE ]>
		<style type="text/css">
			.yui-skin-sam .yui-button .first-child button {
				padding: 0 6px;
			}
		</style>
	<![endif]-->
	<!--[if IE 6]>
		<style type="text/css">
			.yui-skin-sam .yui-button .first-child button {
				padding: 0 4px;
			}
		</style>
	<![endif]-->
	<!--[if !IE]>-->
		<style type="text/css">
			.yui-skin-sam .yui-button .first-child button {
				padding: 0 2px;
			}
		</style>
	<!--<![endif]-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<div style="margin-bottom:1em;">
		<span id="btnA" class="yui-button"><span class="first-child"><button type="button">A</button></span></span>
		<span id="btnB" class="yui-button"><span class="first-child"><button type="button">B</button></span></span>
		<span id="btnC" class="yui-button"><span class="first-child"><button type="button">C</button></span></span>
		<span id="btnD" class="yui-button"><span class="first-child"><button type="button">D</button></span></span>
		<span id="btnE" class="yui-button"><span class="first-child"><button type="button">E</button></span></span>
		<span id="btnF" class="yui-button"><span class="first-child"><button type="button">F</button></span></span>
		<span id="btnG" class="yui-button"><span class="first-child"><button type="button">G</button></span></span>
		<span id="btnH" class="yui-button"><span class="first-child"><button type="button">H</button></span></span>
		<span id="btnI" class="yui-button"><span class="first-child"><button type="button">I</button></span></span>
		<span id="btnJ" class="yui-button"><span class="first-child"><button type="button">J</button></span></span>
		<span id="btnK" class="yui-button"><span class="first-child"><button type="button">K</button></span></span>
		<span id="btnL" class="yui-button"><span class="first-child"><button type="button">L</button></span></span>
		<span id="btnM" class="yui-button"><span class="first-child"><button type="button">M</button></span></span>
		<span id="btnN" class="yui-button"><span class="first-child"><button type="button">N</button></span></span>
		<span id="btnO" class="yui-button"><span class="first-child"><button type="button">O</button></span></span>
		<span id="btnP" class="yui-button"><span class="first-child"><button type="button">P</button></span></span>
		<span id="btnQ" class="yui-button"><span class="first-child"><button type="button">Q</button></span></span>
		<span id="btnR" class="yui-button"><span class="first-child"><button type="button">R</button></span></span>
		<span id="btnS" class="yui-button"><span class="first-child"><button type="button">S</button></span></span>
		<span id="btnT" class="yui-button"><span class="first-child"><button type="button">T</button></span></span>
		<span id="btnU" class="yui-button"><span class="first-child"><button type="button">U</button></span></span>
		<span id="btnV" class="yui-button"><span class="first-child"><button type="button">V</button></span></span>
		<span id="btnW" class="yui-button"><span class="first-child"><button type="button">W</button></span></span>
		<span id="btnX" class="yui-button"><span class="first-child"><button type="button">X</button></span></span>
		<span id="btnY" class="yui-button"><span class="first-child"><button type="button">Y</button></span></span>
		<span id="btnZ" class="yui-button"><span class="first-child"><button type="button">Z</button></span></span>
	</div>
	<h1 id="memHeader" runat="server">In Memory</h1>
	<p id="memCaption" runat="server">In honoring the civilian and military personnel that worked at, or flew out of, NAS Alameda or the Naval Aviation Depot, we dedicate this page to them. Research continues, and we owe many thanks to a number of our visitors who have added their first hand knowledge to help us complete these lists. We have tried to be as accurate as possible, and if you have updated information, please email our <%=ANAM.MailUtil.ObfuscateEmail("webmaster@alamedanavalairmuseum.org", "webmaster")%> with any details.</p>
	<div class="in-memory">
		<asp:DataList ID="dlMemorial" runat="server" RepeatColumns="2" Width="100%" BorderStyle="none" Visible="false">
			<ItemTemplate>
				<%#makeMemorialLink(Container.DataItem)%>
			</ItemTemplate>
		</asp:DataList>
	</div>
	<asp:Repeater ID="rptMemorialPerson" runat="server" Visible="false">
		<ItemTemplate>
			<h1>In Memory of <%#Eval("Rank")%> <%#Eval("FirstName")%> <%#Eval("LastName")%> <%#Eval("Status")%></h1>
			<%#Eval("Details")%>
		</ItemTemplate>
	</asp:Repeater>
	<asp:Literal ID="litSpacer" runat="server" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.ANAM.Common.btnClick = function() {
			window.location.href = "InMemory.aspx?ch="+this._button.innerHTML;
		}
		YAHOO.util.Event.onContentReady("btnZ", function() {
			var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			for (var i=0; i<26; i++) {
				var btn = new YAHOO.widget.Button("btn"+chars.charAt(i));
				btn.on("click", YAHOO.ANAM.Common.btnClick); 
			}
		});
	</script>
</asp:Content>
