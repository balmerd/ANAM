<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Skipper's Chair" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>
	
<asp:Content ID="cpHeadContent" ContentPlaceHolderID="cphead" runat="server">
</asp:Content>

<asp:Content ID="cpMainContent" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Skipper's Chair</h1>
	<div class="right-buffer">
		<div class="polaroid">
			<div class="bd">
				<img src="/images/staff/york-m-skipper.jpg" width="265" height="424" alt="Marilyn York, ANAM President" />
			</div>
		</div>
	</div>
	<div class="right-buffer">
		<div class="polaroid">
			<div class="bd">
				<img src="/images/staff/york-m-wave.jpg" width="120" height="138" alt="Marilyn York, WAVES" />
				<div class="caption" style="width:120px;">Marilyn was in the first graduating class of U.S. Navy <a href="http://en.wikipedia.org/wiki/WAVES" target="_blank" style="text-decoration:underline;">WAVES</a> in WW II</div>
			</div>
		</div>
	</div>
    <p>Our vision is to build ANAM into the leading museum of its kind on the West Coast. This is no small task, but certainly no pipe-dream either. To be a leading museum we'll need more of the hard work, determination and tenacity that has been the hallmark of our first six years of operation. We'll need significant growth in our base membership. New members will bring the additional skill sets and innovation we need to implement the many programs that will serve our local community and the country as a whole. We'll need higher levels of funding, the lifeblood of any non-profit organization. Finally, and most importantly, we'll need to follow our long-term plan that carefully outlines what must be accomplished for the museum to develop, grow and measure success. Each of these is critical if we hope to achieve our vision and goals.</p>
    <p>When the museum shut its doors with the closure of NAS Alameda in 1997, those of us who had a role in its inception doubted whether they would ever open again. It was a long road full of seemingly insurmountable challenges, but we never gave up and the museum reopened in 2004. Today, we face new challenges in difficult economic times. However, the same "Can Do" attitude that millions of us carried back in 1941 is still very much alive at the Alameda Naval Air Museum. With your help we will weather the current storm!</p>
    <p>I want to thank all of the countless individuals who continue to dedicate themselves to our mission. So many of you have given generously of your time and money to get us where we are today. Very special thanks go out to the Board of Directors and our Staff. You have accomplished so much. I am proud to have you at my side as together we preserve the history of NAS Alameda and her predecessors, aviation pioneers and the brave men and women who have served their country at Alameda Point.</p>
	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	<br /> 	
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
