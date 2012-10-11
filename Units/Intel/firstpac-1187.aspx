<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - FIRSTPAC-1187" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>FIRSTPAC-1187 Fleet Intelligence Rapid Support Team Pacific 1187</h1>
	<div class="right-buffer">
		<div class="polaroid">
			<div class="bd">
				<img src="/images/units/intel/firstpac-1187/patch.jpg" width="200" height="201" alt="FIRSTPAC-1187 Patch" />
				<div class="caption" style="width:200px;">FIRSTPAC-1187 Patch</div>
			</div>
		</div>
	</div>
	<div class="right-buffer">
		<div class="polaroid">
			<div class="bd">
				<img src="/images/units/intel/firstpac-1187/002.jpg" width="522" height="402" alt="Junior Officers of FIRSTPAC-1187" />
				<div class="caption" style="width:522px;">Junior Officers of FIRSTPAC-1187, from left to right: Geoff Phillips, Jim Jellison, Bob Cieri and Dave Rogers on 13 July 1985. We're in our "choker whites" for the ceremony.</div>
			</div>
		</div>
	</div>
	<div class="clear1em"></div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/units/intel/firstpac-1187/001.jpg" width="667" height="365" alt="Officers and Enlisted personnel" />
			<div class="caption" style="width:667px;">Officers and Enlisted personnel of FIRSTPAC-1187 gathered for a Unit Photo on the occasion of the Naval Air Reserve Alameda Change of Command Ceremony, 13 July 1985.</div>
		</div>
	</div>
	<div class="clear1em"></div>
	<div class="polaroid">
		<div class="bd">
			<img src="/images/units/intel/firstpac-1187/003.jpg" width="556" height="418" alt="ENS Robert M. Cieri" />
			<div class="caption" style="width:556px;">ENS Robert M. Cieri, USNR on 13 July 1985</div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="credit">
		<b>Credit:</b>Images provided by Mr. Robert M. Cieri.
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<!--script language="javascript">
		YAHOO.util.Event.onAvailable("divPhoto1", doCenter);
		function doCenter() {
			var rgnContent = YAHOO.util.Dom.getRegion("main-content");
			var rgnPhoto = YAHOO.util.Dom.getRegion(this.id);
			alert("rgnContent:"+(rgnContent.right - rgnContent.left)+", rgnPhoto:"+(rgnPhoto.right - rgnPhoto.left));
			var rgnPhoto = YAHOO.util.Dom.getRegion(this.id);
			var widthContent = (rgnContent.right - rgnContent.left);
			var widthPhoto = (rgnPhoto.right - rgnPhoto.left);
			YAHOO.util.Dom.setX(this.id, rgnPhoto.left + ((rgnContent.right - rgnContent.left) - (rgnPhoto.right - rgnPhoto.left)));
		}
	</script-->
</asp:Content>
