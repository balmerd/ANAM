<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Exhibits" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>
	
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<div id="exhibits" class="carousel-container" caption="Museum Exhibits">
		<ol class="carousel-list"></ol>
	</div>
	<div class="clear"></div>
	<div id="gallery-image" style="min-height:800px; padding-top:10px;"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		YAHOO.util.Event.onDOMReady(function (ev) {
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("exhibits");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Martin 130", fileName: "Martin130.jpg", width: 740, height: 552, caption: "", customCredit: "Photo provided by Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "yamato.jpg", width: 568, height: 500, caption: "ANAM Veterans History Project videographer Gerry Judd enjoys the museum's new Battleship Yamato exhibit." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic1.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic2.jpg", width: 600, height: 450, caption: "" }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic3.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic4.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic5.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic6.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic7.jpg", width: 568, height: 757, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic8.jpg", width: 568, height: 757, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic9.jpg", width: 600, height: 450, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic10.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic11.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic12.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic13.jpg", width: 568, height: 426, caption: "" }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic14.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic15.jpg", width: 568, height: 426, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "", fileName: "pic16.jpg", width: 568, height: 426, caption: "" }));
			YAHOO.ANAM.Gallery.render( { id: "exhibits", images: arrImages, thumbnailCaptions: false });
			YAHOO.ANAM.Gallery.setItemSelected(0, "exhibits", arrImages); // pre-select first image
		});
	</script>
</asp:Content>
