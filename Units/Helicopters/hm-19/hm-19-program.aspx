<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - VA-303" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>HM-19 "Golden Bears" Helicopter Mine Countermeasures Squadron Nineteen</h1>
	<div id="hm-19" class="carousel-container" caption="Establishment Ceremony Program">
		<ol class="carousel-list"></ol>
	</div>
	<div id="gallery-image" style="min-height:460px; padding-top:10px;"></div>
	<div class="credit">
		<b>Credit:</b>Images provided by Mr. Robert M. Cieri.
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript" language="javascript">
		YAHOO.util.Event.onDOMReady(function (ev) {
			var arrUnitImages = [];
			YAHOO.ANAM.Gallery.setCategory("hm-19");
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "front.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page1.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page2.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page3.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page4.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page5.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page6.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page7.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "page8.jpg", width: 750, height: 439, caption: "" }));
			arrUnitImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "back.jpg", width: 750, height: 439, caption: "" }));
			YAHOO.ANAM.Gallery.render({ id: "hm-19", images: arrUnitImages, thumbnailCaptions: false });
			YAHOO.ANAM.Gallery.setItemSelected(0, "hm-19", arrUnitImages);
		});
	</script>
</asp:Content>
