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
		<div class="yui-u first">
			<div class="polaroid">
				<div class="bd">
					<a href="/Gallery.aspx">
						<img src="/images/gallery/historic/photo010.jpg" width="370" alt="" />
					</a>
					<div class="caption" style="width:370px;">Pan Am China Clipper over San Francisco -- 22 November 1935</div>
				</div>
			</div>
			<div class="clear" style="height:0.5em;">&nbsp;</div>
			<div class="polaroid">
				<div class="bd">
					<a href="/Gallery.aspx">
						<img src="/images/gallery/rotation/DN-ST-91-00783-sm.jpg" width="370" height="231" alt="" />
					</a>
					<div class="caption" style="width:370px;">A pilot of a Naval Air Reserve Attack Squadron 304 (VA-304) and his wingman, after take off from Naval Air Station Alameda -- 29 October 1990</div>
				</div>
			</div>
			<div class="clear" style="height:0.5em;">&nbsp;</div>
			<div class="polaroid">
				<div class="bd">
					<a href="/Gallery.aspx">
						<img src="/images/gallery/rotation/DN-ST-91-00231-sm.jpg" width="370" height="231" alt="" />
					</a>
					<div class="caption" style="width:370px;">HM-15 Sea Dragon conducts mine countermeasures operations,<br />in San Francisco Bay -- 1 September 1990</div>
				</div>
			</div>
		</div>
		<div class="yui-u">
			<!--div class="module">
				<div class="hd" style="color:#FFD700;">See our Float in the Fourth of July Parade!</div> 
				<div class="bd">
					Make your plans now to attend Alameda's Annual Mayor's Fourth of July Parade. This major event grows grander every year. Get more information on the parade website at <a href="http://www.myalamedaparade.com" target="_blank">www.myalamedaparade.com</a></p>
				</div> 
			</div-->
			<!--div class="module">
				<div class="hd" style="color:#FFD700;">Upcoming Events</div> 
				<div class="bd">
                    <p class="last"><b>Saturday, May 8, 2010 8:00 am - 3:00 pm - Model Swap Meet</b> in the Crows Nest at the Alameda Naval Air Museum. $5.00 Admission fee 
                    includes tour of museum.<br /><br />Fans of model aircraft, boats and cars won't want to miss this swap meet presented by Evil Monkey 
                    Productions. RC (radio control), control line,  and free flight models and equipment will be available, as well as, hobby related items of 
                    all kinds. For vendor information, please contact: George Ellison - 510-763-6769, or <nobr>e-mail:</nobr> <%=ANAM.MailUtil.ObfuscateEmail("longshot50-1@att.net", "longshot50-1@att.net")%></p>
				</div> 
			</div>
			<div style="height:1em;">&nbsp;</div-->
			<div class="module">
				<div class="hd clickable" style="color:#FFD700;" onclick="window.location.href='ChinaClipper.aspx'">China Clipper 75th Anniversary Commemoration</div> 
				<div class="bd">
                    <p>The Alameda Naval Air Museum will host events to commemorate the 75th Anniversary of the China Clipper's first commercial flight from its base in Alameda to the 
                    Philippine Islands.</p>
                    <p>VIP Reception - Wednesday, November 17, 2010 - 7:00 to 9:00 PM</p>
                    <p>Dignitaries, speakers, living history participants, will set the tone as we unveil the new China Clipper exhibit. Rare film footage of inaugural transpacific flight will also be shown. Wine and hors d'oeuvres will be served. Tickets are available at the museum for $25.00 in advance or $30.00 at the door. A $5.00 discount is being offered to museum members and anyone who dresses in 1930's period attire. Members of the media will be admitted for free.</p>
                    <p>75th Anniversary Commemoration - Sunday, November 21, 2010 - 1:00 to 3:00 PM</p>
                    <p>Living history event featuring live simulated radio broadcast with re-enactors portraying actual participants from the historic flight in 1935, vintage vehicles, military fly-by and more. Admission is $5.00. Free parking.</p>
                    <a href="ChinaClipper.aspx">Click here for more details</a>, and many thanks to our <a href="C75Partners.aspx">China Clipper 75 Event Partners</a>.
				</div> 
			</div>
			<div style="height:1em;">&nbsp;</div>
			<div class="module">
				<div class="hd">NAS Alameda Book is now available!</div> 
				<div class="bd">
					The museum has teamed up with <a href="http://www.arcadiapublishing.com/" target="_blank">Arcadia Publishing</a> to create a book 
					in their <b>Images of America</b> series titled "Alameda Naval Air Station". The book was published on 
					July 5, 2010 and is available for purchase at the Alameda Naval Air Museum Gift Shop, online, and through select retailers.
					<a href="http://www.arcadiapublishing.com/mm5/merchant.mvc?Screen=PROD&amp;Product_Code=9780738580401&amp;Store_Code=arcadia&amp;search=naval+air+station+alameda&amp;offset=0&amp;filter_cat=&amp;PowerSearch_Begin_Only=&amp;sort=name.asc&amp;range_low=&amp;range_high=%20%26srch_name%3D1" target="_blank">Click here</a> to order!
                    <br /><br />The Mercury News has a very nice article on <a href="http://www.mercurynews.com/bay-area-living/ci_15797787?nclick_check=1" target="_blank">Bill Larkins</a>, the author and photographer.
				</div> 
			</div>
			<div style="height:1em;">&nbsp;</div>
			<div class="module">
				<div class="hd clickable" onclick="window.location.href='GetInvolved.aspx'">Annual Museum Membership Drive</div> 
				<div class="bd">
					If you enjoy our website or visits to the Alameda Naval Air Museum, perhaps you'd like to help by becoming a 
					museum member. We've kicked off our Annual Membership Drive for 2010 with a goal of 100 NEW MEMBERS. For just $25.00 
					per year you can help us continue to preserve the rich aviation and naval history of NAS Alameda and Alameda Point. 
					For more information, visit <a href="GetInvolved.aspx">How to Get Involved</a>. Don't wait, please join us today!
				</div> 
			</div>
			<div style="height:1em;">&nbsp;</div>
			<div class="module">
				<div class="hd clickable" onclick="window.location.href='VHP.aspx'">Subjects Needed for Veterans History Project Interviews</div> 
				<div class="bd">
					Are you a U.S. military veteran who served during WWII, the Korean War, Viet Nam, or perhaps at NAS Alameda? If you are, 
					or you know of a family member or friend who did, we would like to capture your story on video tape for permanent archive at the 
					U.S. Library of Congress. For more information, please see our <a href="VHP.aspx">Veterans History Project page.</a>
				</div> 
			</div>
			<div style="height:1em;">&nbsp;</div>
			<div class="module">
				<div class="hd">In the News</div> 
				<div class="bd">
					<!--p><b>July 9 - 10, 2009</b> The Military Vehicle Preservation Assocation's <a href="http://www.mvpa.org/convoy/convoy.htm" target="_blank">2009 Transcontinental Motor Convoy</a> arrived in Alameda at the end of their 90th anniversary convoy across the United States. A reception was held at the Alameda Naval Air Museum and onboard the USS Hornet Museum. Visit the <a href="http://www.mvpa.org/convoy/convoy.htm" target="_blank">MVPA website</a> for details and history.</p-->
					<!--p><b>April 18, 2009</b> marks the 67th anniversary of the <a href="http://en.wikipedia.org/wiki/Doolittle_Raid" target="_blank">Doolittle Raid on Tokyo</a>. General Jimmy Doolittle and his B-25 Mitchell bombers and crew were loaded aboard the aircraft carrier USS Hornet CV-8 at NAS Alameda prior to making the first attack on the Japanese homeland after Pearl Harbor.</p-->
                    <p><b>Sunday, August 22, 2010</b> The Mercury News has a very nice article on <a href="http://www.mercurynews.com/bay-area-living/ci_15797787?nclick_check=1" target="_blank">Bill Larkins</a>, the author of the recently published "Alameda Naval Air Station".</p>
                    <p><b>Saturday, May 8, 2010</b> A Model Swap Meet was held in the Crows Nest at the Alameda Naval Air Museum featuring RC (radio control), control line, and free flight models and equipment.</p>

                    <p><b>April 18, 2010</b> marked the 68th year since Alameda  native, General Jimmy Doolittle along with 79 crew members and 16 Army B-25 bombers loaded 
                    on the USS Hornet CV-8 sailed from Alameda to attack the homeland of Japan during the early days of WW2 
                    (<a href="http://en.wikipedia.org/wiki/Doolittle_Raid" target="_blank">see Doolittle Raid</a>).<br /><br />To commemorate this anniversary, the Alameda Naval 
                    Museum displayed items of history relating to that event including Photos, News Clippings, Models, Vintage Vehicles, and the Living History Group. 
                    Also the film <i>"30 Seconds Over Tokyo"</i> was shown in our Ready Room.</p>

                    <p class="last"><b>February 14, 2010</b> The ribbon cutting ceremony of the Baack-Davis-Hague Research Library took place at the Alameda Naval Air Museum on Sunday, February 14. The event was as part of the museum's Annual Membership Meeting.</p>
				</div> 
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
</asp:Content>
