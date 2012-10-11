<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>
	
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<meta name="verify-v1" content="4VkWDngIEvBjDvQazg+NrWz3W7lNBM158XoWuc65DJ8=" />
	<meta name="msvalidate.01" content="8B25C2F93D7DD73190AE81F2FFC2B619" />
	<style type="text/css">
	    p.last { margin-bottom: 0; }
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<div style="float:left; width:100%;">
		<div style="float:left; width:660px; padding-right:1em;">
			<p style="margin-top:0.5em;">Come and see the history in your own backyard &#8212; at the Alameda Naval Air Museum in <a id="alameda-ca" href="http://www.ci.alameda.ca.us/" target="_blank">Alameda, California</a>.</p>
			<p>Our museum is home to a unique collection of artifacts and exhibits emphasizing the role of the Alameda Naval Air Station 
			in the defense of our nation and as an integral part of the local community for over 50 years.</p>
			<p>We are open on Saturdays and Sundays from 10:00am to 4:00pm. Call us at (510) 522-4262 for more information.</p>
		</div>
		<div style="float:left; width:100px;">
			<img src="/images/nas-alameda-patch.jpg" width="100" height="101" alt="" />
		</div>
	</div>
	<div class="clear"></div>
	<div class="yui-g">
        <div class="module">
			<div class="hd clickable" style="color:#FFD700;" onclick="window.location.href='ChinaClipper.aspx'">China Clipper 75th Anniversary Commemoration</div> 
			<div class="bd">
                <div style="margin-bottom:1em; padding:4px; background:#fff; border:4px solid #ddd; margin:10px auto; width:660px;">
                    <!--embed src="/videos/ANAMC75.MOV" width="640" height="360" autoplay="true" controller="true" loop="false" pluginspage="http://www.apple.com/quicktime/" style="width:660px; height:370px; margin:1em auto 0.25em auto;"></embed-->
                    <div style="font-size:smaller;">Public service announcement video courtesy of <a href="http://www.brianink.com/" target="_blank">Brian, Ink.</a></div>
                </div>
                <p>The Alameda Naval Air Museum will host events to commemorate the 75th Anniversary of the China Clipper's first commercial flight from its base in Alameda to the 
                Philippine Islands.</p>
                <p>VIP Reception - Wednesday, November 17, 2010 - 7:00 to 9:00 PM</p>
                <p>Dignitaries, speakers, living history participants, will set the tone as we unveil the new China Clipper exhibit. Rare film footage of inaugural transpacific flight will also be shown. Wine and hors d'oeuvres will be served. Tickets are available at the museum for $25.00 in advance or $30.00 at the door. A $5.00 discount is being offered to museum members and anyone who dresses in 1930's period attire. Members of the media will be admitted for free.</p>
                <p>75th Anniversary Commemoration - Sunday, November 21, 2010 - 1:00 to 3:00 PM</p>
                <p>Living history event featuring live simulated radio broadcast with re-enactors portraying actual participants from the historic flight in 1935, vintage vehicles, military fly-by and more. Admission is $5.00. Free parking.</p>
                <a href="ChinaClipper.aspx">Click here for more details</a>, and many thanks to our <a href="C75Partners.aspx">China Clipper 75 Event Partners</a>.
			</div> 
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
