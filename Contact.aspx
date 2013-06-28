<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Contact Us" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<style type="text/css">
	    .module { float:left; width:375px; }
		.module .bd { text-align: center; }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Contact Us</h1>
	<div class="module" style="margin-right:20px;">
		<div class="hd">Alameda Naval Air Museum</div> 
		<div class="bd">
			<br />2151 Ferry Point Road<br />Alameda, CA 94501<br />510-522-4262<br />&nbsp;<br /><%=ANAM.MailUtil.ObfuscateEmail("info@alamedanavalairmuseum.org")%><br />&nbsp;
			<div style="height:17px; min-height:17px;"></div>
		</div> 
	</div>
	<div class="clear1em"></div>
	<div class="module" style="margin-right:20px;">
		<div class="hd">Research</div> 
		<div class="bd">
			Do you have a question for our museum research team? Would you like to share some information about NAS Alameda or early aviation at Alameda Point? 
			If so, please contact us at <%=ANAM.MailUtil.ObfuscateEmail("research@alamedanavalairmuseum.org")%>
		</div> 
	</div>
	<div class="module">
		<div class="hd">Board of Directors</div> 
		<div class="bd">
			Would you like to share feedback with the museum board of directors? Do you have a suggestion on ways to improve the museum experience? 
			Please send us a note at <%=ANAM.MailUtil.ObfuscateEmail("board@alamedanavalairmuseum.org")%>
		</div> 
	</div>
	<div class="clear1em"></div>
	<div class="module" style="margin-right:20px;">
		<div class="hd">Curator</div> 
		<div class="bd">
			<div style="float:left; width:100%;">
				<div style="float:left; width:100px;">
					<div class="polaroid">
						<div class="bd">
							<img src="/images/staff/pirack-l.jpg" width="86" height="100" alt="" />
						</div>
					</div>
				</div>
				<div style="float:left; width:250px;">
					<br /><b>Larry Pirack</b><br />&nbsp;<br />510-522-6440<br />&nbsp;<br /><%=ANAM.MailUtil.ObfuscateEmail("backtothe40s@gmail.com")%><br />&nbsp;
				</div>
			</div>
			<div class="clear"></div>
		</div> 
	</div>
	<div class="module">
		<div class="hd">Event Coordinator, Membership</div> 
		<div class="bd">
			<div style="float:left; width:100%;">
				<div style="float:left; width:100px;">
					<div class="polaroid">
						<div class="bd">
							<img src="/images/staff/musso-f.jpg" width="86" height="100" alt="" />
						</div>
					</div>
				</div>
				<div style="float:left; width:250px;">
					<br /><b>Frank Musso</b><br />&nbsp;<br />510-523-3939<br />&nbsp;<br /><%=ANAM.MailUtil.ObfuscateEmail("frankmusso@sbcglobal.net")%><br />&nbsp;
				</div>
			</div>
			<div class="clear"></div>
		</div> 
	</div>
	<div class="clear1em"></div>
	<div class="module" style="margin-right:20px;">
		<div class="hd">Acquisitions</div> 
		<div class="bd">
			<div style="float:left; width:100%;">
				<div style="float:left; width:100px;">
					<div class="polaroid">
						<div class="bd">
							<img src="/images/staff/wroebel-s.jpg" width="86" height="100" alt="" />
						</div>
					</div>
				</div>
				<div style="float:left; width:250px;">
					<br /><b>Sieg Wroebel</b><br />&nbsp;<br />510-522-2244<br />&nbsp;<br /><%=ANAM.MailUtil.ObfuscateEmail("northlandskip@hotmail.com")%><br />&nbsp;
				</div>
			</div>
			<div class="clear"></div>
		</div> 
	</div>
	<div class="module">
		<div class="hd">Community Relations</div> 
		<div class="bd">
			<div style="float:left; width:100%;">
				<div style="float:left; width:100px;">
					<div class="polaroid">
						<div class="bd">
							<img src="/images/staff/parry-b.jpg" width="86" height="100" alt="" />
						</div>
					</div>
				</div>
				<div style="float:left; width:250px;">
					<br /><b>Chief Bronson Parry</b><br />&nbsp;<br />510-521-9983<br />&nbsp;<br /><%=ANAM.MailUtil.ObfuscateEmail("bronsonparry@comcast.net")%><br />&nbsp;
				</div>
			</div>
			<div class="clear"></div>
		</div> 
	</div>
	<div class="clear1em"></div>
	<div class="module" style="margin-right:20px;">
		<div class="hd">Webmaster, Site Design and Development</div> 
		<div class="bd">
			<div style="float:left; width:100%;">
				<div style="float:left; width:100px;">
					<div class="polaroid">
						<div class="bd">
							<img src="/images/staff/balmer-d.jpg" width="86" height="100" alt="" />
						</div>
					</div>
				</div>
				<div style="float:left; width:250px;">
					<br /><b>David Balmer</b><br />&nbsp;
					<br /><a href="http://www.dbalmer.net" target="_blank">http://www.dbalmer.net</a><br />&nbsp;
					<br /><%=ANAM.MailUtil.ObfuscateEmail("webmaster@alamedanavalairmuseum.org")%><br />&nbsp;
				</div>
			</div>
			<div class="clear"></div>
		</div> 
	</div>
	<div class="clear"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
