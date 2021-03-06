<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>
	
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
    <div style="margin-bottom:0.5em;">
        <img src="images/oct-2014-swap-meet.png" />
    </div>
	<div class="yui-g">
		<div class="yui-u first">
			<div id="gallery">
				<!--
				<div class="clear" style="height: 0.5em;">&nbsp;</div>
				<div class="polaroid">
					<div class="bd">
						<a href="Exhibits.aspx"><img width="370" height="196" alt="" src="images/gallery/rotation/Martin130-sm.jpg"/></a>
						<div style="width: 370px;" class="caption">Martin 130 flying model, donated to the museum by Mr. Randall Patrick.</div>
					</div>
				</div>
				<div class="clear" style="height: 0.5em;">&nbsp;</div>
				-->
				<div class="polaroid">
					<div class="bd">
						<a href="Gallery.aspx"><img width="370" height="249" alt="" src="images/gallery/rotation/a4c-sf-skyline-sm.jpg"/></a>
						<div style="width: 370px;" class="caption">A-4C Skyhawk over the San Francisco waterfront with Aquatic Park and Crissy Field clearly visible below the nose of the aircraft.</div>
					</div>
				</div>
				<div class="clear" style="height: 0.5em;">&nbsp;</div>
				<div class="polaroid">
					<div class="bd">
						<a href="Gallery.aspx"><img width="370" height="247" alt="" src="images/gallery/rotation/DN-ST-91-00231-sm.jpg"/></a>
						<div style="width: 370px;" class="caption">HM-15 Sea Dragon conducts mine countermeasures operations,<br/>in San Francisco Bay -- 1 September 1990</div>
					</div>
				</div>
				<div class="clear" style="height: 0.5em;">&nbsp;</div>
				<div class="polaroid">
					<div class="bd">
						<a href="Gallery.aspx"><img width="370" height="301" alt="" src="images/gallery/rotation/a4-line-sm.jpg"/></a>
						<div style="width: 370px;" class="caption">A-4 Skyhawk line at Naval Aviation Depot (Rework Facility) Alameda, CA.</div>
					</div>
				</div>
			</div>
		</div>
		<div class="yui-u">
			<!--
			<div class="module">
				<div class="hd" style="color: #FFD700;">Museum Open House</div>
				<div class="bd">
					On Saturday, November 12th, Alameda Naval Air Museum will host an Open House. All members of the community are cordially invited to attend this FREE event.<br /><br />
					Come and learn more about the rich history that exists in your own backyard. From the Wright Brothers to the China Clipper, WWII to Desert Storm, Alameda Point and NAS Alameda have been an integral part of aviation history and the industrial complex associated with our national defense.<br /><br />
					Open House Hours: 10:00 am to 4:00 pm - FREE ADMISSION
				</div>
			</div>
			-->
			<!--
			<div style="height: 1em;">&nbsp;</div>
			<div class="module">
				<div class="hd" xxx-style="color: #FFD700;">Volunteer Needed!</div>
				<div class="bd">
					Volunteer Position: <b>Gift Shop Sales Associate</b><br /><br />
					Handle gift shop transactions, track daily sales. Flexible weekend schedules (Sat - Sun).<br /><br />
					Requirements: Basic math, some experience with customer care, home Internet access, e-mail account.<br /><br />
					If you are interested or have questions, please contact<br />Larry Pirack: <%=ANAM.MailUtil.ObfuscateEmail("backtothe40s@gmail.com")%>
				</div>
			</div>
			<div class="module">
				<div class="hd" style="color: #FFD700;">Upcoming Events</div>
				<div class="bd">
					<b>Sunday, December 8th from 1:00pm - 4:00pm</b>&nbsp;
					<p style="margin-top:1em;">The joint Christmas party for <a href="http://www.commemorativeairforce.org/" target="_blank">Commemorative Air Force</a> and Alameda Naval Air Museum members will be held in the Crows Nest at the Museum. The main meal will be served around 3:00pm, and <b>please bring a dish that will feed 4 to 5 people</b>.</p>
				</div>
			</div>
			<div style="height: 1em;">&nbsp;</div>
			-->
			<div class="module">
				<div class="hd" style="color: #FFD700;">New Base Historical Map Available!</div>
				<div class="bd">
					All text &amp; photos are from the Combined Specific Buildings Survey and Evaluation Report/Cold War Era Historic Resources Survey and Evaluation Report by JRP Historical Consulting LLC (August 2010) unless otherwise noted.
					<p style="margin-top:1em;">See our new map at <a target="_blank" href="https://mapsengine.google.com/map/viewer?mid=zuZ1nxyfcR0s.kwbBvmvCBULI">The NAS Alameda Map Project</a>, compiled by ETC Josh Price, U.S. Coast Guard.</p>
				</div>
			</div>
			<div style="height: 1em;">&nbsp;</div>
			<!--
			<div class="module">
				<div class="hd">Annual General Membership Meeting</div>
				<div class="bd">
					Friends and Guests of the museum are invited to attend the 2014 Annual General Membership meeting to be held at 1:00 PM on Sunday February 9, 2014.<br /><br />
					As an important part of the Museum�s future, you will have the opportunity to hear our plan for strengthening our current position, building for a sustainable future, and expanding our mission to preserve the history of NAS Alameda and Alameda Point. It�s also an opportunity to provide direct feedback to the Board.
				</div>
			</div>
			<div style="height: 1em;">&nbsp;</div>
			<div class="module">
				<div class="hd" style="color: #FFD700;">Farewell to Kin Robles</div>
				<div class="bd">
					Kin has retired from the museum after many years of service.
					<p style="margin-top:0.5em; margin-bottom:0; padding-bottom:0;">We appreciate all that Kin has done to advance the cause of the museum, and wish him all the best in his future endeavours.</p>
				</div>
			</div>
			<div style="height: 1em;">&nbsp;</div>
			-->
            <!--
			<div class="module">
				<div class="hd clickable" onclick="window.location.href='GetInvolved.aspx'">Annual Museum Membership Drive</div>
				<div class="bd">
					If you enjoy our website or visits to the Alameda Naval Air Museum, perhaps you'd like to help by becoming a museum member. 
					Our Annual Membership Drive is now underway with a 2013 goal of 175 NEW MEMBERS. For just $35.00 per year you can help us continue to 
					preserve the rich aviation and naval history of NAS Alameda and Alameda Point. For more information, visit 
					<a href="GetInvolved.aspx">How to Get Involved</a>. Don't wait, please join us today!
				</div>
			</div>
			<div style="height: 1em;">&nbsp;</div>
            -->
			<div class="module">
				<div class="hd">NAS Alameda Book</div>
				<div class="bd">
					The museum has teamed up with <a href="http://www.arcadiapublishing.com/" target="_blank">Arcadia Publishing</a> 
					to create a book in their <b>Images of America</b> series titled "Alameda Naval Air Station". The book is available for purchase at the Museum Gift Shop, online, and through select retailers. 
					<a href="http://www.arcadiapublishing.com/mm5/merchant.mvc?Screen=PROD&Product_Code=9780738580401&Store_Code=arcadia&search=naval+air+station+alameda&offset=0&filter_cat=&PowerSearch_Begin_Only=&sort=name.asc&range_low=&range_high=%20%26srch_name%3D1" target="_blank" alt="Arcadia Book Cover">Click here</a> to order! 
				</div>
			</div>
			<!--
			<div class="module">
				<div class="hd">Upcoming Events</div>
				<div class="bd" style="height:220px;">
					<div>
						<div class="right-buffer">
							<div class="polaroid">
								<div class="bd">
									<img src="/images/vintage-days.jpg" width="160" height="200" alt="" />
								</div>
							</div>
						</div>
						<p>Our next event is on Sunday June 5th at the Alameda Naval Air Museum.</p>
						<p>Visit us on <a href="http://www.facebook.com/event.php?eid=159879637399206" target="_blank">Facebook.</a></p>
					</div>
				</div>
			</div>
			-->
			<div style="height: 1em;">&nbsp;</div>
			<div class="module">
				<div class="hd clickable" onclick="window.location.href='VHP.aspx'">Subjects Needed for Veterans History Project Interviews</div>
				<div class="bd">
					Are you a U.S. military veteran who served during WWII, the Korean War, Viet Nam, or perhaps at NAS Alameda? If you are, or you
					know of a family member or friend who did, we would like to capture your story on video tape for permanent archive at the U.S. Library of
					Congress. For more information, please see our <a href="VHP.aspx">Veterans History Project page.</a>
				</div>
			</div>
			<div style="height: 1em;">&nbsp;</div>
			<div class="module">
				<div class="hd">In the News</div>
				<div class="bd">
					<p><b>Sunday, April 7th, 2013</b> the Alameda Naval Air Museum hosted the East Bay Collector Car and Parts Swap Meet.</p>

					<p><b>Sunday, February 10th, 2013</b> Friends and Guests of the museum attended the 2013 Annual General Membership and had the opportunity to hear our plan for strengthening our current position, building for a sustainable future, and expanding our mission to preserve the history of NAS Alameda and Alameda Point.</p>

					<p><b>Saturday, November 12th, 2011</b> the Alameda Naval Air Museum held a special Open House featuring live demonstrations by the US Navy and Coast Guard Maritime Safety and Security crews and their vessels.  Museum staff, including history re-enactors, were on hand to guide guests through the museum�s three floors of exhibits. Films were shown throughout the day in the Mayor �Chuck� Corica Ready Room, and visitors learned about the world�s first transpacific flight in ANAM�s China Clipper Hall.</p>

					<p><b>April 18, 2011</b> marked the 69th year since Alameda native, General Jimmy Doolittle along with 79 crew members and 16 Army B-25
						bombers loaded on the USS Hornet CV-8 sailed from Alameda to attack the homeland of Japan during the early days of WW2 
						(<a	href="http://en.wikipedia.org/wiki/Doolittle_Raid" target="_blank">see 	Doolittle Raid</a>).
						<br /><br />
						To commemorate this anniversary, the Alameda Naval Museum displayed items of history relating to that event including Photos, News
						Clippings, Models, Vintage Vehicles, and the Living History Group. Also the film <i>"30 Seconds Over Tokyo"</i> was shown in our Ready Room.</p>
					<!--
					<p><b>Sunday, November 21, 2010</b> China Clipper 75th Anniversary Commemoration
					
					<p>The Alameda Naval Air Museum hosted events to commemorate the 75th Anniversary of the China Clipper's first commercial
					flight from its base in Alameda to the Philippine Islands.</p>
					
					<p>Events held on Sunday, November 21, 2010 included: Debut of the new Pan Am Clipper Exhibit Hall, guest speakers, memorial service, 
					live simulated radio broadcast with re-enactors portraying actual participants from the historic flight in 1935, and much more.</p>

					<p><a href="ChinaClipper.aspx">Click here for more details</a>, and many thanks to our <a href="C75Partners.aspx">China Clipper 75 Event Partners</a>.</p>
					-->

					<!--p><b>Sunday, August 22, 2010</b> The Mercury News has a very nice article on 
						<a href="http://www.mercurynews.com/bay-area-living/ci_15797787?nclick_check=1" target="_blank">Bill Larkins</a>, 
						the author of the recently published "Alameda Naval Air Station".</p-->
					<!--
					<p><b>Saturday, May 8, 2010</b> A Model Swap Meet was held in the Crows Nest at the Alameda Naval Air Museum featuring RC (radio control),
						control line, and free flight models and equipment.</p>

					<p class="last"><b>February 14, 2010</b> The ribbon cutting ceremony of the Baack-Davis-Hague Research Library took place at the Alameda Naval
						Air Museum on Sunday, February 14. The event was as part of the museum's Annual Membership Meeting.</p>
					-->
				</div>
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
//		try {
//			setInterval(function() {
//				if (YAHOO.util.Dom.hasClass("event1", "hidden")) {
//					YAHOO.util.Dom.addClass("event2", "hidden");
//					YAHOO.util.Dom.removeClass("event1", "hidden");
//				} else {
//					YAHOO.util.Dom.removeClass("event2", "hidden");
//					YAHOO.util.Dom.addClass("event1", "hidden");
//				}
//			}, 30000);
//		} catch (ignore) {}
	</script>
</asp:Content>
