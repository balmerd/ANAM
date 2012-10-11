<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Photo Gallery" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<style type="text/css">
		.yui-skin-sam .yui-carousel-nav {
			background-image: none;
			line-height: 1em;
			padding: 0 4px 0 0;
		}
		#anam-gallery .yui-nav em {
			color: #008;
			font-weight: bold;
		}
		#anam-gallery .yui-nav .selected em {
			color: #FFF;
		}
	</style>
	<!--[if lte IE 6]>
	<style type="text/css">
		.yui-skin-sam .yui-carousel-nav {
			padding: 0;
		}
	</style>
	<![endif]-->	
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Photo Gallery</h1>
	<div id="anam-gallery" class="yui-navset">
		<ul class="yui-nav">
			<li class="selected"><a href="#nas"><em>NAS Alameda</em></a></li>
		</ul>            
		<div class="yui-content">
			<div id="nas" class="carousel-container">
				<ol class="carousel-list"></ol>
			</div>
		</div>
	</div>
	<div id="gallery-image" style="min-height:1300px; padding-top:10px;"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		var renderedPersonnel = false, 
			renderedHistoric = false,
			renderedWAVES = false,
			renderedAircraft = false,
			renderedHelicopters = false,
			renderedShips = false,
			renderedNAVAIRES = false,
			renderedInsignia = false;

		var contentLoading = '<p style="margin-top:1em;"><img src="/build/carousel/assets/ajax-loader.gif" width="32" height="32" alt="" style="vertical-align:middle;" /> Loading, please wait...</p>';

		function handleTabEvent(ev) {
			var tab = ev.newValue;
			var label = tab._configs.label.value;
			if (label == "Personnel" && renderedPersonnel == false) {
				renderPersonnel(tab);
			} else if (label == "Historic" && renderedHistoric == false) {
				renderHistoric(tab);
			} else if (label == "WAVES" && renderedWAVES == false) {
				renderWAVES(tab);
			} else if (label == "Aircraft" && renderedAircraft == false) {
				renderAircraft(tab);
			} else if (label == "Ships" && renderedShips == false) {
				renderShips(tab);
			} else if (label == "Helicopters" && renderedHelicopters == false) {
				renderHelicopters(tab);
			} else if (label == "NAVAIRES" && renderedNAVAIRES == false) {
				renderNAVAIRES(tab);
			} else if (label == "Insignia" && renderedInsignia == false) {
				renderInsignia(tab);
			}
		}
		function renderPersonnel(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("personnel");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Capt. L.M. Grant<br/>NAS Alameda 1940-42", fileName: "grant-lm.jpg", width: 382, height: 500, caption: "Capt. L.M. Grant was the first Commander of NAS Alameda from 1940 to 1942." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Cdr. J.G. Woolway<br/>NAS Alameda 1996", fileName: "woolway-jg.jpg", width: 344, height: 538, caption: "Cdr. J.G. Woolway was the last Commander of NAS Alameda in 1996." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "LCpl Kim Rodecker<br/>NAS Alameda 1979", fileName: "rodeker-k.jpg", width: 740, height: 468, caption: "NAS Alameda Rear Gate, taken in late 1979 or early 1980.  I am on the left  LCpl Kim Rodecker, Cpl of the guard in the middle, Unknown Marine on the right." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Stephen A. Lunge<br/>NAS Alameda 1969", fileName: "lunge-sa.jpg", width: 740, height: 501, caption: "This photo was taken with me standing in the street, facing the Sea Cadet Training Building at NAS Alameda sometime prior to May 1969. As I recall, we had just finished a Color Guard Ceremony. I was a 17 year old Airman at the time, and later obtained the rank of Midshipman before leaving the cadets." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "First Command<br/>NAS Alameda 1941", fileName: "commanders.jpg", width: 640, height: 588, caption: "First Command - Alameda Naval Air Station - 1941." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Irving Gilmore<br/>Navy Air Medal", fileName: "gilmore-i.jpg", width: 440, height: 600, caption: "Aviation Radioman Second Class Irving Gilmore. Petty Officer Gilmore was a radioman / gunner in SB2C and TBM aircraft during WWII. He was awarded the Navy Air Medal for combat operations in the South Pacific." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "George Ferenz<br/>circa 1940", fileName: "ferenz-g.jpg", width: 568, height: 437, caption: "Mr. Ferenz (left) trained at NAS Alameda until he was placed on active duty in January of 1941. He served in the South Pacific as a member of the &quot;Black Cats&quot;. (photo taken at NAS Alameda circa 1940)" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Frank McConville<br/>in control tower", fileName: "mcconville-f.jpg", width: 568, height: 428, caption: "Frank McConville (middle) working in the control tower at NAS Alameda during the early 1960's. Frank was interviewed at our museum in 2004 for the Veterans History Project and is a docent aboard U.S.S. Hornet." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "AKC Chuck Holder<br/>March 1981", fileName: "holder-c.gif", width: 568, height: 413, caption: "AKC Chuck Holder shown on the staircase outside Building 77 in March 1981. Chief Holder was the Aviation Support Division Chief for the Supply Department from 1965 through 1981, Chuck was either stationed at NAS Alameda Supply Department (Bldg. 8) or home ported on the USS Midway and USS Coral Sea." }));
			tab.set('content', '<div id="personnel" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "personnel", images: arrImages, thumbnailCaptions: true });
			renderedPersonnel = true;
		}
		function renderHistoric(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("historic");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Pan Am China Clipper<br/>over San Francisco", fileName: "photo010.jpg", width: 568, height: 413, caption: "Pan American China Clipper - 1935 - over San Francisco.  You can see Coit Tower in the background." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Former PAA pilots and stewardess", fileName: "cc75_112010_2.jpg", width: 700, height: 467, caption: "Former PAA pilots and stewardess - Jim Hurson, Yvonne Hurson, Gary Beard, Carl Holder - pose with photo of the China Clipper (Martin M-130) at NAS Alameda China Clipper 75th Anniversary event 20 November 2010." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Pan Am Clipper<br/>Historical Plaque", fileName: "PanAmPlaque.jpg", width: 552, height: 500, caption: "<p>The Alameda Naval Air Museum will host events to commemorate the 75th Anniversary of the China Clipper's first commercial flight from its base in Alameda to the Philippine Islands.</p><p>VIP Reception - Wednesday, November 17, 2010 - 7:00 to 9:00 PM</p><p>Dignitaries, speakers, living history participants, will set the tone as we unveil the new China Clipper exhibit. Rare film footage of inaugural transpacific flight will also be shown. Wine and hors d'oeuvres will be served. Tickets are available at the museum for $25.00 in advance or $30.00 at the door. A $5.00 discount is being offered to museum members and anyone who dresses in 1930's period attire. Members of the media will be admitted for free.</p><p>75th Anniversary Commemoration - Sunday, November 21, 2010 - 1:00 to 3:00 PM</p><p>Living history event featuring live simulated radio broadcast with re-enactors portraying actual participants from the historic flight in 1935, vintage vehicles, military fly-by and more. Admission is $5.00. Free parking.</p><a href='ChinaClipper.aspx'>Click here for more details</a>" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda 50th<br/>Anniversary Dedication", fileName: "nas-50-monument.jpg", width: 473, height: 392, caption: "NAS Alameda 50th anniversary dedication plaque.  November 1, 2010 will mark the 70th anniversary of the commissioning of NAS Alameda." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Capt. Campbell at<br/>Nimitz Field dedication", fileName: "campbell-d-67.jpg", width: 568, height: 717, caption: "Capt. Duncan &quot;Duke&quot; Campbell, base commander NAS Alameda, with the widow of Admiral Chester Nimitz. Mrs. Nimitz attended the dedication of Nimitz Field in honor of her late husband at NAS Alameda in 1967. The dedication was held inside one of the hangars adjacent to the runway because of the inclement weather that day." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Gen. Doolittle and<br/>Tokyo Raid plaque", fileName: "doolittle-j-67.jpg", width: 568, height: 678, caption: "Gen. James Doolittle and Capt. Duncan Campbell at NAS Alameda in April, 1967 for dedication of a plaque commemorating the 25th Anniversary of Doolittle's Tokyo Raid. On April 2, 1942, Doolittle and sixteen B-25 bombers sailed under great secrecy from NAS Alameda aboard U.S.S Hornet (CV-8) bound for the Japanese coast. Sixteen days later they would drop their bombs on Tokyo striking the first blow in retaliation for America's stunning defeat at Pearl Harbor. This same plaque can be seen today outside of the main entrance to the Alameda Naval Air Museum." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Parade of Ships<br/>17 July 1959", fileName: "photo005.jpg", width: 568, height: 405, caption: "17 July 1959 - Midway leads the First Fleet into San Francisco Bay for a four day visit. This photo is from the USS Midway CVA-41 Far East Cruisebook 1959-1960", customCredit: "Photo research by Mr. Robert M. Cieri" }));

//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "4", fileName: "IMG-0056-CCI06042011_00004.jpg", width: 740, height: 888, caption: "<br/><br/><a href='/images/gallery/historic/IMG-0056-CCI06042011_00004-full.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "5", fileName: "IMG-0057CCI06042011_00005.jpg", width: 740, height: 918, caption: "<br/><br/><a href='/images/gallery/historic/IMG-0057CCI06042011_00005-full.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "6", fileName: "IMG-0058CCI06042011_00006.jpg", width: 740, height: 597, caption: "<br/><br/><a href='/images/gallery/historic/IMG-0058CCI06042011_00006-full.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "8", fileName: "IMG-0060CCI06042011_00008.jpg", width: 740, height: 596, caption: "<br/><br/><a href='/images/gallery/historic/IMG-0060CCI06042011_00008-full.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "9", fileName: "IMG-0061CCI06042011_00009.jpg", width: 740, height: 920, caption: "<br/><br/><a href='/images/gallery/historic/IMG-0061CCI06042011_00009-full.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "10", fileName: "IMG-00621CCI06042011_00010.jpg", width: 740, height: 928, caption: "<br/><br/><a href='/images/gallery/historic/IMG-00621CCI06042011_00010jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "11", fileName: "IMG-0063CCI06042011_00011.jpg", width: 740, height: 925, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "12", fileName: "IMG-0064CCI06042011_00012.jpg", width: 740, height: 433, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "13", fileName: "IMG-0065CCI06042011_00013.jpg", width: 740, height: 594, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "16", fileName: "IMG-0070CCI06042011_00016.jpg", width: 740, height: 589, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "17", fileName: "IMG-0071CCI06042011_00017.jpg", width: 740, height: 590, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "18", fileName: "IMG-0072CCI06042011_00018.jpg", width: 740, height: 590, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "10", fileName: "IMG-0073CCI06042011_00019.jpg", width: 740, height: 588, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "20", fileName: "IMG-0074CCI06042011_00020.jpg", width: 740, height: 593, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "22", fileName: "IMG-0076CCI06042011_00022.jpg", width: 740, height: 587, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "23", fileName: "IMG-0077CCI06042011_00023.jpg", width: 740, height: 610, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "24", fileName: "IMG-0078CCI06042011_00024.jpg", width: 740, height: 627, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "25", fileName: "IMG-0079CCI06042011_00025.jpg", width: 740, height: 927, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "26", fileName: "IMG-0080CCI06042011_00026.jpg", width: 740, height: 1020, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "14", fileName: "IMG-0068CCI06042011_00014.jpg", width: 740, height: 939, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "38", fileName: "IMG-0092CCI06042011_00038.jpg", width: 740, height: 607, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "39a", fileName: "IMG-0093ACCI06042011_00039.jpg", width: 740, height: 1027, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "39b", fileName: "IMG-0093BCCI06042011_00039.jpg", width: 740, height: 905, caption: "<br/><br/><a href='/images/gallery/historic/.jpg' target='_blank'>View full size image</a>" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "27", fileName: "IMG-0081CCI06042011_00027.jpg", width: 740, height: 592, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "28", fileName: "IMG-0082CCI06042011_00028.jpg", width: 740, height: 589, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "29", fileName: "IMG-0083CCI06042011_00029.jpg", width: 740, height: 571, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "30", fileName: "IMG-0084CCI06042011_00030.jpg", width: 740, height: 594, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "31", fileName: "IMG-0085CCI06042011_00031.jpg", width: 740, height: 590, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "32", fileName: "IMG-0086CCI06042011_00032.jpg", width: 740, height: 589, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "33", fileName: "IMG-0087CCI06042011_00033.jpg", width: 740, height: 590, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "34", fileName: "IMG-0088CCI06042011_00034.jpg", width: 740, height: 591, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "35", fileName: "IMG-0089CCI06042011_00035.jpg", width: 740, height: 589, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "36", fileName: "IMG-0090CCI06042011_00036.jpg", width: 740, height: 590, caption: "" }));
//			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "37", fileName: "IMG-0091CCI06042011_00037.jpg", width: 740, height: 524, caption: "" }));

			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Women Airforce<br/>Service Pilots", fileName: "wasps.jpg", width: 568, height: 481, caption: "During World War II, a select group  of young women pilots became pioneers, heroes, and role models.&nbsp;They were the <a href='http://en.wikipedia.org/wiki/Women_Airforce_Service_Pilots' style='text-decoration:underline;' target='_blank'>Women Airforce Service Pilots (WASP)</a>, the first women in  history trained to fly American military aircraft.&nbsp;Their mission was to ferry combat aircraft to and from the war zone. Four women pilots leaving their ship, &quot;Pistol Packin' Mama,&quot; at the four-engine school at Lockbourne AAF, Ohio, during WASP training to ferry B-17 Flying Fortress. L to R are Frances Green, Margaret (Peg) Kirchner, Ann Waldner and Blanche Osborn. (U.S. Air Force photo)." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Sunday Services<br/>August 1943", fileName: "photo006.jpg", width: 568, height: 452, caption: "Sunday Services - August 1943. The crew of the USS Mobile enroute to attack a Japanese base on Marcus Island. OS2U 'Kingfisher' aircraft on the catapult. The Kingfisher was the best and most widely used WWII reconnaissance aircraft to operate from Navy capital ships.<br /><br />The most famous incident involving a Kingfisher was the rescue of Captain Eddie Rickenbacker, who ditched a B-17 in the Pacific during 1942. A Kingfisher picked up Rickenbacker and two other crew members but the Kingfisher could not take off because the load was too great. The OS2U pilot taxied on the surface over 40 miles to make the nearest landfall with everyone aboard." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Florene Watson<br/>P-51 Ferry Pilot", fileName: "photo007.jpg", width: 568, height: 419, caption: "Women flight crews were used to ferry combat aircraft to and from the war zone during WWII.<br />Ferry pilot Florene Watson, WAF, warms up her P-51 Mustang." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "F-4U Corsair", fileName: "photo011.jpg", width: 568, height: 399, caption: "F-4U Corsair. In continous service from 1943 through the Korean War." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "F-6F Hellcat", fileName: "photo012.jpg", width: 568, height: 381, caption: "F-6F Hellcat. Most important allied shipboard fighter of WW II with 4,947 enemy aircraft destroyed." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "SB2C Helldiver", fileName: "photo013.jpg", width: 568, height: 387, caption: "SB2-C Helldiver. In service from 1943 to 1949." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "SOC-1 Seagull", fileName: "photo014.jpg", width: 568, height: 255, caption: "SOC-1 Curtiss Seagull. First aircraft overhauled at Alameda. In service from 1939 to 1946." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "F6F-3 Drawing<br/>NAS Alameda 1944", fileName: "photo015.jpg", width: 568, height: 435, caption: "F6F-3 Production Drawing. A & R Department - NAS Alameda 1944." }));
			tab.set('content', '<div id="historic" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "historic", images: arrImages, thumbnailCaptions: true });
			renderedHistoric = true;
		}
		function renderWAVES(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("waves");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "2nd WAVE Class Group I Midgeville, GA 1944", fileName: "2nd-wave-class-I.jpg", width: 568, height: 451, caption: "2nd WAVE Class Group I Midgeville, GA 1944", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "2nd WAVE Class Group II Midgeville, GA 1944", fileName: "2nd-wave-class-II.jpg", width: 568, height: 453, caption: '2nd WAVE Class Group II Midgeville, GA 1944.  My Mother, <a style="text-decoration:underline;" href="/InMemory.aspx?id=000">Viola Violette</a>, is 2nd from right in the bottom row of the picture.', credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "2nd WAVE Class Group III Midgeville, GA 1944", fileName: "2nd-wave-class-III.jpg", width: 568, height: 426, caption: "2nd WAVE Class Group III Midgeville, GA 1944", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "WAVEs at Alameda, CA ~1945", fileName: "waves-alameda-1945.jpg", width: 568, height: 438, caption: "WAVEs at Alameda, CA ~1945", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Lt. Opal Watts - Alameda", fileName: "lt-opal-watts.jpg", width: 568, height: 865, caption: "Lt. Opal Watts - Alameda", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>October 5, 1944", fileName: "tribune-10-5-44.jpg", width: 568, height: 1219, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>October 5, 1944", fileName: "tribune-10-5-44-IIa.jpg", width: 568, height: 556, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>October 5, 1944", fileName: "tribune-10-5-44-IIb.jpg", width: 568, height: 588, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>October 5, 1944", fileName: "tribune-10-5-44-IIIa.jpg", width: 568, height: 606, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>October 5, 1944", fileName: "tribune-10-5-44-IIIb.jpg", width: 568, height: 510, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>January 22, 1945", fileName: "tribune-1-22-45.jpg", width: 568, height: 625, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>January 22, 1945", fileName: "tribune-1-22-45-II.jpg", width: 568, height: 545, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>January 22, 1945", fileName: "tribune-1-22-45-III.jpg", width: 568, height: 539, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>January 22, 1945", fileName: "tribune-1-22-45-IV.jpg", width: 568, height: 715, caption: "", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oakland Tribune<br/>January 22, 1945", fileName: "tribune-1-22-45-V.jpg", width: 568, height: 789, caption: "", credit: "Mr. David F. Schauf" }));
			tab.set('content', '<div id="waves" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "waves", images: arrImages, thumbnailCaptions: true });
			renderedWAVES = true;
		}
		function renderAircraft(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("aircraft");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "BU# 35051 of VAW 13 Zappers", fileName: "vaw-13-713-35051.jpg", width: 740, height: 590, caption: "Aircraft number 713 BU# 35051 of VAW 13 Zappers. Taken at Naval Air Station Alameda. date unknown.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda<br/>Douglas C-117D", fileName: "C-117D-Alameda65.jpg", width: 740, height: 428, caption: "An NAS Alameda Douglas C-117D in front of the Air Terminal (Building 77) during an Open House on October 30, 1965. The Douglas &quot;Super DC-3&quot; was originally called the R4D-8 when delivered to the Navy and the model designation was changed when DOD combined the USAF and Navy/Marine Corps designations.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "S2F Tracker of VS 872 at NAS Alameda", fileName: "VS-872-S2F-Tracker.jpg", width: 740, height: 609, caption: "Photo of a crew of an S2F Tracker of VS 872 at NAS Alameda<br/><br/>&quot;100% Combat Ready Reserve Crew.&quot; by JO2 Paul G. Gardner of the NAS Alameda Public Affairs Office on 1 July 1965.<br/><br/>After months of arduous study, advanced tactical training, coordinated fleet anti-submarine warfare exercises, and a whole lot of flying, these four men, comprising crew number three in Naval Air Reserve Squadron VS 872 assigned to the Naval Air Reserve Training Unit (NARU) Alameda have been evaluated by their superiors as 100% Combat Ready. This is a rare distinction among &quot;Weekend Warrior&quot; aircraft crews.<br/><br/>Pictured left to right: LCDR Robert G. Howard, pilot; LT Max G. Gossman, co-pilot; AO1 Herbert D. Biggs and AT2 James L. Wetzig, radar operator.<br/><br/>The proud crew pose in front of the Grumman S2F Tracker aircraft which they fly. This aircraft is specifically designed to detect and destroy enemy submarines. Notification of the crew's achievement was forwarded by the Chief of Naval Air Reserve Training.<br/><br/><a href='/images/gallery/aircraft/VS-872-S2F-Tracker-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "EA-3B of VAQ-208", fileName: "EA-3B-VAQ-208.jpg", width: 736, height: 496, caption: "An EA-3B of <a href=&quot;units/aircraft/vak-208.aspx&quot;>VAQ-208</a>, taken on 19 March 1973.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "EA-3B of VAQ-308", fileName: "EA-3B-VAQ-308.jpg", width: 720, height: 464, caption: "An EA-3B of <a href=&quot;units/aircraft/vak-308.aspx&quot;>VAQ-308</a>, taken on 14 July 1976.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Boeing F4B-1 at<br/>Curtiss-Wright Airport", fileName: "F4B-1-1929.jpg", width: 568, height: 343, caption: "Here's a good one for you to stir up someone who thinks they know everything about NAS Alameda. The Navy was around Alameda long before the Naval Air Station was built. This photo shows a beautiful Boeing F4B-1 (BuNo A8140) at the old Curtiss-Wright Airport in Alameda, later named Alameda Airport, and finally used by Pan American Airways until 1939. This airport and all of its buildings were torn down and would today be under the West end of the E-W runway at NAS Alameda.  This is not the earliest that I can prove as I also have an original negative, with the date scratched on it, of two Martin T4M-1 torpedo bombers of VT-1 inside the hangar on May 10, 1929. VT-1B was on the USS LEXINGTON at that time so it would be worth checking to see if the ship was in the Bay on a visit around that date.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Grumman SF-1", fileName: "SF-1nasAlameda.jpg", width: 568, height: 291, caption: "Grumman SF-1 at Oakland Airport in late 1941.  This is the second plane assigned to NAS Alameda.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "L12 landing at<br/>OLF Concord", fileName: "SBDOLFConcord.jpg", width: 568, height: 378, caption: "L12 landing at OLF Concord on March 23, 1944. That was an Outlying Field for NAS Alameda and used by all types of planes for practice takeoffs and landings.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "General Motors TBM-3E", fileName: "TBMalameda46.jpg", width: 568, height: 358, caption: "General Motors TBM-3E at NAS Alameda on March 6, 1946. <i>&quot;That's a Lockheed-Vega PV-1 under the nose, and a Grumman J4F-2 &quot;Widgeon&quot; to the right.&quot;</i>", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Curtiss SC-1<br/>of SOSU-3", fileName: "SC-1w22.jpg", width: 568, height: 352, caption: "Curtiss SC-1 (BuNo 35744) at NAS Alameda on 6 March 1946 when assigned to Scout Observation Service Unit Three (SOSU-3).", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Grumman F8F-1<br/>from USS BOXER", fileName: "F8F1boxeroversf.jpg", width: 568, height: 438, caption: "Grumman F8F-1 from USS BOXER, photographed over San Francisco on June 2, 1947.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Douglas AD-1<br/>and Grumman F8F-1", fileName: "AD1-F8F-inflight.jpg", width: 568, height: 442, caption: "Douglas AD-1 from VA-20A, and Grumman F8F-1 from VF-20A, over the Golden Gate Bridge on June 2, 1947. <i>&quot;Both were from the USS BOXER and I shot this from the top turret of a TBM-3E. It still remains as one of my most memorable flights.&quot;</i>", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "F6F-5 returning<br/>to NAS Alameda", fileName: "F6F-5flightB119.jpg", width: 568, height: 373, caption: "F6F-5 (BuNo 72713) just out of overhaul at NAS Alameda. Note &quot;run in&quot; on cowl. Name on plane is ENS KEN ADAMS but I don't know if that is him flying it. I shot this from a Vultee BT-13A near Concord on Feb 17, 1947 when he was on his way back to Alameda.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Consolidated P3Y-2<br/>leaving NAS Alameda", fileName: "R3Y-2.jpg", width: 568, height: 364, caption: "Consolidated P3Y-2 (BuNo 131723) &quot;Caribbean Sea Tradewind&quot; leaving Alameda on October 16, 1956.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Lockheed P2V-6M<br/>of VA-HM-13", fileName: "P2V-6M.jpg", width: 568, height: 323, caption: "Lockheed P2V-6M of VA-HM-13, at NAS Alameda 16 June 1957.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Martin P5M-2<br/>at NAS Alameda", fileName: "P5M-2-VP47.jpg", width: 568, height: 333, caption: "Martin P5M-2 (BuNo 137846) of VP-47 at Alameda in May 1960.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Douglas AD-5Q<br/>of VAW-13", fileName: "AD-5Q-VAW-13-62.jpg", width: 568, height: 325, caption: "Douglas AD-5Q (BuNo 132534) of VAW-13 at NAS Alameda on 14 July 1962.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Douglas A-4's<br/>of VA-93", fileName: "VA-93-66.jpg", width: 568, height: 461, caption: "A dramatic closeup of VA-93 Douglas A-4s on the USS Enterprise in June 1966. The ship was returning to Alameda and is headed into the Golden Gate.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Grumman S-2F<br/>tail markings", fileName: "S2F-NARTU.jpg", width: 568, height: 380, caption: "Closeup of the tail markings of a Grumman S-2F of the Naval Air Reserve Training Unit, Alameda.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VA-304 A-7E takeoff from NAS Alameda", fileName: "DN-ST-91-00783.jpg", width: 740, height: 496, caption: "A view of the pilot of a Naval Air Reserve Attack Squadron 304 (VA-304) A-7E Corsair II aircraft and his wingman, as they fly a training mission, having just taken off from Naval Air Station Alameda. Date Shot: 29 October 1990.ID# DN-ST-91-00783.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "SNJ Texan trainer aircraft", fileName: "DN-SC-95-02236.jpg", width: 740, height: 480, caption: "DN-SC-95-02236 ANDREWS AIR FORCE BASE (10 August 1995) A left rear view of an SNJ Texan trainer aircraft, in NAS Alameda paint scheme, parked on the tarmac. The aircraft is taking part in Freedom Flight America; a flight of vintage aircraft en route to New York City to commemorate the 50th anniversary of the end of World War Two. U.S. Navy photo by Don S. Montgomery.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-7A Corsair II of VA-303", fileName: "A-7AVA-303.jpg", width: 568, height: 389, caption: "A-7A Corsair II of VA-303.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-7A Corsair II in November 1973", fileName: "va-304-corsair.jpg", width: 568, height: 352, caption: "A-7A Corsair II of VA-304 in November 1973.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Grumman &quot;Bearcat&quot; F8F-1", fileName: "bearcat.jpg", width: 568, height: 327, caption: "Grumman &quot;Bearcat&quot; F8F-1 , BuNo 95320, flown by Commander Harry E. Cook Jr. This photo was taken at NAS Alameda on June 2, 1947. Hidden from view is the &quot;VF-20&quot; designation painted on the left hand bomb rack.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Lockheed R6V Constitution", fileName: "lockheed-rv6.gif", width: 568, height: 461, caption: "During WWII, the Navy ordered two prototype R6Vs as potential replacements for the Lockheed Constellation.?Because the aircraft was found to be underpowered and of limited range, only these two were built. Both were stationed at NAS Alameda and flown to Hawaii and Washington, D.C. by the VR-44 Navy transport squadron.<br/><br/>This image shows Ship #2 (BuNo 85164) with its VR-44 tail marking (RM).", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Fairchild 45", fileName: "fairchild-45.gif", width: 568, height: 350, caption: "This is the Fairchild Model 45 landing at Alameda. This JK-1 was used by the Commanding Officer of NAS Alameda while the base was being built in 1940. A rare plane, this was the only one in the Navy. Only two Model 45's are still flying today.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Howard GH-2", fileName: "howard-gh2.gif", width: 568, height: 352, caption: "Howard GH-2 or GH-3 of Scout Observation Squadron Three (SOSU-3) shown at NAS Alameda in late 1945 or early 1946. This rare photo was taken by Fred Dickey Jr. while stationed at NAS Alameda.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-4C Skyhawk on USS Ranger", fileName: "plane002.jpg", width: 568, height: 350, caption: "A-4C Skyhawk - being hoisted onto the USS Ranger (CVA-61) - circa 1966.", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Curtis C-46F", fileName: "curtis-c46f.gif", width: 568, height: 326, caption: "Curtiss C-46F, N69346, shown at NAS Alameda in July 1963. QUICKTRANS was a contract service during this period for civilian operators to carry freight for the Navy.", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "McDonnell-Douglas C-9B", fileName: "c9b.gif", width: 568, height: 315, caption: "McDonnell-Douglas C-9B BuNo 159114 shown at NAS Alameda on May 4, 1974. The C-9B is a convertible passenger/cargo version of the civil series 30 DC-9-A. It is the second military version, the Air Force having previously selected essentially the same model as their C-9A Nightingale aeromedical airlift transport. The C-9B can carry between 55 and 100 passengers, depending on the model and the configuration. A typical C-9B squadron has 4 aircraft. The most common mission is to move support personnel and cargo for Navy tactical aircraft squadron deployments and shipboard personnel movements.", credit: "William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Marine A-6 Intruder and SF skyline", fileName: "a6-marine.gif", width: 568, height: 350, caption: "Marine A-6 Intruder on the ramp at NAS Alameda.&nbsp;(the San Francisco - Oakland Bay Bridge and the Transamerica Pyramid can be seen in the background)", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Lockheed Constellation", fileName: "plane001.jpg", width: 750, height: 497, caption: "Lockheed Constellation - on NAS Alameda taxiway (circa 1970's).", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "TA-4F Skyhawk two-seat trainer", fileName: "plane003.jpg", width: 568, height: 350, caption: "TA-4F Skyhawk sits on the ramp at NAS Alameda in 1967. This is the Marines version of the two seat trainer.", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-3 Skywarrior in Hangar 21", fileName: "plane004.jpg", width: 568, height: 359, caption: "A-3 Skywarrior parked in Hanger 21 at NAS Alameda (23 January 1988).", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-4 Returning to NAS Alameda", fileName: "plane006.jpg", width: 568, height: 350, caption: "A-4 Returning to NAS Alameda.", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-4C of VA-155 at NAS Alameda", fileName: "va155-a4.jpg", width: 568, height: 350, caption: "A-4C of VA-155 at NAS Alameda.", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "P-2 Neptune and seaplane lagoon", fileName: "p2-neptune-66.jpg", width: 750, height: 491, caption: "P-2 Neptunes - next to seaplane lagoon with USS Coral Sea (CV-43) in the background (circa 1966).", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-4C over NAS Alameda", fileName: "plane008.jpg", width: 568, height: 350, caption: "A-4C Skyhawk over NAS Alameda.", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-4C over San Francisco", fileName: "a4c-sf-skyline.gif", width: 568, height: 366, caption: "A-4C Skyhawk over the San Francisco waterfront with Aquatic Park and Crissy Field clearly visible below the nose of the aircraft.", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-3 Raven over Golden Gate Bridge", fileName: "a3raven.jpg", width: 525, height: 277, caption: "A-3 Raven over the Golden Gate Bridge.", credit: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VA-304 A-6E launch from USS Nimitz", fileName: "DN-SC-04-15247.jpg", width: 740, height: 495, caption: "An A-6E Intruder, from Attack Squadron 304 (VA-304), &quot;Firebirds&quot;, NAS Alameda, California, in position on catapult two ready to launch off the deck of the USS Nimitz (CVN 68). Taken on 1 August 1992 by PHAN Degner, USN. ID# DN-SC-04-15247.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VA-304 KA-6D Intruder on flight line", fileName: "DN-ST-93-03005.jpg", width: 740, height: 493, caption: "A right side view of an Attack Squadron 304 (VA-304) KA-6D Intruder aircraft parked on the flight line at the US Naval Air Facility, Andrews Air Force Base, Maryland on 18 August 1990. Photo taken by PH2 Bruce Tombecky, USNR-R. ID# DN-ST-93-03005.<br/><br/><a href='/images/gallery/aircraft/DN-ST-93-03005-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VA-304 A-7E in a vertical climb", fileName: "DN-ST-87-03873.jpg", width: 568, height: 994, caption: "An air to air right side view of an Attack Squadron 304 (VA-304) A-7E Corsair II aircraft in a vertical climb. Date Shot: 1 January 1986. ID# DN-ST-87-03873.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VFA 303 F/A-18A aboard USS Nimitz", fileName: "DN-SC-93-05512.jpg", width: 568, height: 454, caption: "DN-SC-93-05512 (1 August 1992) Flight deck personnel stand by as a Strike Fighter Squadron 303 (VFA 303) &quot;Golden Hawks&quot; F/A-18A Hornet aircraft is serviced aboard the nuclear-powered aircraft carrier USS Nimitz (CVN 68). The Reserve Carrier Air Wing 30 (CVWR-30) squadron is embarked aboard the NIMITZ for a two-week annual training period. U.S. Navy photo by PH2 (AW) Tim W. Tow.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VAK 208 KA-3B Skywarrior", fileName: "DN-SC-87-06167.jpg", width: 740, height: 486, caption: "DN-SC-87-06167 (15 September 1985) Flight deck crewmen perform a preflight check on an Aerial Refueling Squadron 208 (VAK 208) &quot;Jockeys&quot; KA-3B Skywarrior aircraft of the Naval Air Reserve at NAS Alameda, California, aboard the nuclear-powered aircraft carrier USS Dwight D. Eisenhower (CVN 69). U.S. Navy photo.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VF 301 F-14A Tomcat aboard USS Nimitz", fileName: "DN-SC-04-15238.jpg", width: 740, height: 495, caption: "DN-SC-04-15238 (1 August 1992) An F-14A Tomcat from Fighter Squadron 301 (VF 301), &quot;Devil's Disciples&quot;, of Naval Air Station (NAS) Miramar, California, in the box prepares to launch off the deck of the nuclear-powered aircraft carrier USS Nimitz (CVN 68). In the foreground is a A-6E Intruder, from Attack Squadron 304 (VA 304), &quot;Firebirds&quot;, of NAS Alameda, California, taxiing by. U.S. Navy Photo by PHAN Degner.<br/><br/><a href='/images/gallery/aircraft/DN-SC-04-15238-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Grumman HU-16C Albatross", fileName: "HU-16C.jpg", width: 740, height: 485, caption: "Private Grumman HU-16C Albatross owned by Lynn Hunt of Santa Rosa painted with Alameda markings (Navy BuNo 131911).", credit: "Mr. William T. Larkins -- &quot;I was able to photograph it in front of the NAS Alameda Tower, as you can see, on November 3, 1990 during the air station's 50th Anniversary Open House. I was only able to get this through dumb luck as they were towing it past the the tower and I happened to be there at the time.&quot;" }));
			tab.set('content', '<div id="aircraft" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "aircraft", images: arrImages, thumbnailCaptions: true });
			renderedAircraft = true;
		}
		function renderShips(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("ships");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Enterprise (CVN 65) under Golden Gate Bridge", fileName: "DN-SC-86-03238.jpg", width: 750, height: 561, caption: "GOLDEN GATE (October 12, 1985) An aerial starboard view of the nuclear-powered aircraft carrier USS Enterprise (CVN 65) passing under the Golden Gate Bridge to lead off the San Francisco Fleet Week celebration. US Navy photo by PH2 David A. Dostie.<br/><br/><a href='/images/gallery/ships/DN-SC-86-03238-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Tripoli (LPH-10)", fileName: "USSTripoli.jpg", width: 740, height: 521, caption: "U.S.S. Tripoli (LPH-10) with San Francicso and the Bay Bridge in the background -- 26 May 1989.", credit: "Mr. Andy J. West" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Coral Sea at NAS Alameda", fileName: "DN-ST-82-05152.jpg", width: 750, height: 498, caption: "DN-ST-82-05152 (23 March 1982) The large harbor tug Acconac (YTB 812) nudges the starboard bow of the aircraft carrier USS Coral Sea (CV 43) during mooring operations at Naval Air Station (NAS) Alameda. The Coral Sea is returning to her homeport following a Western Pacific (WESTPAC) deployment. U.S. Navy photo by PHAA Kathy Moss.<br/><br/><a href='/images/gallery/ships/DN-ST-82-05152-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda<br/>Carriers 1974", fileName: "ship001.jpg", width: 568, height: 356, caption: "One of the rare occasions that four carriers were docked at Alameda (1974). From left to right:<br />USS Coral Sea (CVA-43), USS Hancock (CVA-19),<br />USS Oriskany (CVA-34), USS Enterprise (CVAN-65)." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Coral Sea<br/>September 1967", fileName: "cv43-2-67.jpg", width: 568, height: 374, caption: "USS Coral Sea (CV-43) entering the breakwater at NAS Alameda in September 1967." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS California<br/>(CGN 36)", fileName: "DN-SC-90-01715.jpg", width: 568, height: 404, caption: "DN-SC-90-01715 (5 November 1986) A port beam view of the nuclear-powered guided-missile cruiser USS California (CGN 36) underway off the coast of Southern California, en route to Naval Station San Diego. U.S. Navy photo by PHC O'Connor.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Enterprise<br/>June 1966&nbsp;", fileName: "ship003.jpg", width: 568, height: 352, caption: "USS Enterprise (CVN-65) returns home to Alameda in June 1966." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Midway", fileName: "cva41.jpg", width: 568, height: 389, caption: "USS Midway (CVA-41)" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Oriskany", fileName: "cv34.jpg", width: 568, height: 426, caption: "USS Oriskany (CV-34)" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Enterprise", fileName: "ship004.jpg", width: 568, height: 378, caption: "USS Enterprise (CVN-65) in NAS Alameda inner harbor." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Coral Sea", fileName: "cv43.jpg", width: 568, height: 417, caption: "USS Coral Sea (CV-43)" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Aludra", fileName: "af55.jpg", width: 568, height: 343, caption: "USS Aludra (AF-55) coming alongside to replenish Oriskany (CVA-34) while the carrier conducts air operations off the coast of Vietnam during the Vietnam war." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Enterprise Stuck in the Mud 28 April 1983", fileName: "CVN-65-28-Ap-1983.jpg", width: 740, height: 451, caption: "The USS Enterprise CVN-65 left her homeport, Naval Air Station Alameda on 1 September 1982 for its 14th Deployment and 10th WESTPAC cruise, commanded by CAPT Robert J. Kelly, USN. She embarked Carrier Air Wing (CVW)-11, consisting of the following squadrons: VF-114, VF-213, VA-22, VA-94, VA-95, VAW-117, VAQ-133, VS-37 and HS-6. During her eight-month cruise, she visited the ports of Pearl Harbor, Subic Bay, Perth, Singapore, Mombasa and Sasebo. The &quot;Big E&quot; returned to San Francisco Bay on Thursday 28 April 1983. As she was approaching NAS Alameda, she suddenly shuttered to a halt at 0955 hours. She had missed maneuvering into the 400-yard wide, 42-foot deep breakwater channel and had struck a mud bar. She began a 10-degree list to port, less than a mile from Pier 3. There were thousands of loved ones and friends gathered for her homecoming. ENTERPRISE was stuck for six hours. It took nine tugs and a rising tide to finally free her at 1512 hours. She finally berthed at Pier 3 at 1630 hours, to the relief of everyone. Official US Navy Photograph taken by PHC Corrine Kelly, USN of the &quot;Big E&quot;, shortly after being stranded, four of the nine tugs are visible in the photo. They were pulling her astern.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Enterprise moored at Pier #3", fileName: "DN-SC-85-07382.jpg", width: 740, height: 555, caption: "DN-SC-85-07382 Aerial starboard beam view of the nuclear-powered aircraft carrier USS Enterprise (CVN 65) moored at Pier #3 Naval Air Station (NAS) Alameda on 15 September 1983. U.S. Navy photo by PHAN Wilkerson.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Arkansas CGN 41", fileName: "DN-SC-84-00366.jpg", width: 740, height: 503, caption: "DN-SC-84-00366 PACIFIC OCEAN 1 June 1980 A starboard bow view of the nuclear-powered guided-missile cruiser USS Arkansas (CGN 41) underway. Her forward-mounted Mark 45 5-inch/gun is being fired to port. US Navy photo.", credit: "Mr. Robert M. Cieri" }));

			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Midway in Search and Rescue '82", fileName: "DF-ST-83-09958.jpg", width: 740, height: 508, caption: "DF-ST-83-09958 2 December 1982 PACIFIC OCEAN A port quarter view of the aircraft carrier USS MIDWAY (CV 41) underway while participating in Hong Kong Exercise SEARCH AND RESCUE '82. The MIDWAY is being used as a base of operations for aircraft involved in the exercise. US Navy photo by LT Douglas Dotson.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Wabash off California coast", fileName: "DN-SC-85-07288.jpg", width: 740, height: 592, caption: "DN-SC-85-07288 PACIFIC OCEAN 15 October 1983 Aerial port beam view of the Wichita-class replenishment oiler USS Wabash (AOR 5) underway off the coast of California. WABASH is homeported at NAS Alameda. U.S. Navy photo by PH3 C. Yebba.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Abraham Lincoln at San Francisco", fileName: "DN-SC-95-01321.jpg", width: 740, height: 591, caption: "DN-SC-95-01321 SAN FRANCISCO BAY (15 June 1994) An aerial port beam view of the nuclear-powered aircraft carrier USS Abraham Lincoln (CVN 72) as she steams by the skyline of San Francisco en route to her homeport of Naval Air Station (NAS) Alameda. U.S. Navy photo by  PH2 Eric Hayhurst.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Carl Vinson under Golden Gate Bridge", fileName: "DN-SC-86-03246.jpg", width: 740, height: 592, caption: "DN-SC-86-03246 (12 October 1985) The nuclear-powered aircraft carrier USS Carl Vinson (CVN 70) passes under the Golden Gate Bridge, leading the line of ships participating in San Francisco's 1985 Navy Fleet Week celebration. The Carl Vinson has her homeport at Naval Air Station (NAS) Alameda. U.S. Navy photo by PH2 David A. Dostie.<br/><br/><a href='/images/gallery/ships/DN-SC-86-03246-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Arkansas at 1985 Navy Fleet Week", fileName: "DN-SC-86-03227.jpg", width: 740, height: 495, caption: "DN-SC-86-03227 (12 October 1985) An aerial port beam view of the nuclear-powered guided-missile cruiser USS Arkansas (CGN 41), as she passes beneath the Golden Gate Bridge and enters San Francisco Bay for 1985 Navy Fleet Week activities. U.S. Navy photo by PH2 Dostie.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Arkansas at 1985 Parade of Ships", fileName: "DN-SC-86-03207.jpg", width: 740, height: 490, caption: "DN-SC-86-03207 SAN FRANCISCO BAY (12 October 1985) The nuclear-powered guided-missile cruiser USS Arkansas (CGN 41) passes in review with crewmen manning the rail during the Parade of Ships for San Francisco Navy Fleet Week activities. Arkansas is homeported at NAS Alameda. U.S. Navy photo by PH3 Oslund.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "USS Samuel Gompers moored at NAS Alameda", fileName: "DN-SC-86-03183.jpg", width: 740, height: 493, caption: "DN-SC-86-03183 (4 October 1985) A starboard beam view of the destroyer tender USS Samuel Gompers (AD 37) moored to a pier at Naval Air Station (NAS) Alameda. U.S. Navy photo by PHAN Solseth.", credit: "Mr. Robert M. Cieri" }));
			tab.set('content', '<div id="ships" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "ships", images: arrImages, thumbnailCaptions: true });
			renderedShips = true;
		}
		function renderHelicopters(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("helicopters");
			// TBD
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 over Golden Gate Bridge", fileName: "HM-15-001.jpg", width: 740, height: 514, caption: "MH-53E of HM-15 over the Golden Gate Bridge.  This same aircraft crashed in the Persian Gulf in 14 September 1991 with the loss of all aboard.", credit: "Mr. Andy J. West" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 minesweeping exercise", fileName: "HM-15-002.jpg", width: 740, height: 521, caption: "MK-105 minesweeping exercise in San Francisco Bay onboard U.S.S. Tripoli (LPH-10) -- 26 May 1989.", credit: "Mr. Andy J. West" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 MH-53E takeoff", fileName: "HM-15-003.jpg", width: 740, height: 1049, caption: "Minesweeping operations onboard the U.S.S. Tripoli (LPH-10) -- 26 May 1989.", credit: "Mr. Andy J. West" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 over San Francisco", fileName: "HM-15-004.jpg", width: 740, height: 526, caption: "MH-53E Sea Dragon Helicopter of HM-15 departs U.S.S. Tripoli (LPH-10) during minesweeping operations -- 26 May 1989.", credit: "Mr. Andy J. West" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 MH-53E onboard LPH-10", fileName: "HM-15-005.jpg", width: 740, height: 525, caption: "HM-15 minesweeping exercise onboard U.S.S. Tripoli (LPH-10) passing below Golden Gate Bridge on the way to Vancouver, British Columbia -- 26 May 1989.", credit: "Mr. Andy J. West" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 MH-53E Sea Dragon", fileName: "HM-15-006.jpg", width: 740, height: 521, caption: "Minesweeping exercise onboard U.S.S. Tripoli (LPH-10) -- 26 May 1989.", credit: "Mr. Andy J. West" }));
			// EXISTING
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HS-10 SH-3 Sea King at NAS Alameda", fileName: "hs-10.jpg", width: 568, height: 382, caption: "SH-3 Sea King of HS-10 at NAS Alameda.<i>&quot;Photo of the HS-10 aircraft was taken taken while I was in the Fleet Replacement Aircrew Course in 1983 - standard training to become an Aircrewman - it was my first flight ever in a helicopter.&quot;</i>", credit: "Mr. Joseph P. Parsons" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 Sea Dragon conducts operations", fileName: "DN-ST-91-00231.jpg", width: 740, height: 493, caption: "A Helicopter Mine Countermeasures Squadron Fifteen (HM-15) MH-53E Sea Dragon helicopter conducts mine countermeasures operations, in San Francisco Bay near Naval Air Station, Alameda, California. Taken on 1 September 1990 by John R. Gaffney. ID# DN-ST-91-00231.<br/><br/><a href='/images/gallery/helicopters/DN-ST-91-00231-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 Sea Dragon on final approach", fileName: "DN-ST-91-00233.jpg", width: 568, height: 379, caption: "A Helicopter Mine Countermeasures Squadron Fifteen (HM-15) MH-53E Sea Dragon helicopter on final approach, returning to Naval Air Station Alameda, after securing from mine countermeasures operations. Taken on 1 September 1990 by John R. Gaffney. ID# DN-ST-91-00233.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HM-15 MH-53E and mobile powerplant", fileName: "DN-ST-89-11356.jpg", width: 568, height: 364, caption: "An NC-8A mobile powerplant and a hydraulic test stand sit beside an MH-53E Sea Dragon helicopter from Helicopter Mine Countermeasures Squadron 15 (HM-15) outside a hangar containing two other Sea Dragons. Taken at NAS Alameda on 1 January 1989 by PH2 Grzezdinski. ID# DN-ST-89-11356.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "HS-85 SH-3H deploys AQS-13B sonar", fileName: "DN-SC-93-05515.jpg", width: 740, height: 592, caption: "DN-SC-93-05515 PACIFIC OCEAN (1 August 1992) An SH-3H Sea King helicopter of Helicopter Anti-submarine Squadron 85 (HS 85) &quot;Golden Gater's&quot; of NAS Alameda, California, hovers over the water while deploying its AQS-13B dipping sonar. The Reserve Carrier Air Wing 30 (CVWR 30) squadron is embarked aboard the nuclear-powered aircraft carrier USS Nimitz (CVN-68) for a two-week annual training period. U.S. Navy photo by PH2 (AW) Tim W. Tow.", credit: "Mr. Robert M. Cieri" }));			
			tab.set('content', '<div id="helicopters" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "helicopters", images: arrImages, thumbnailCaptions: true });
			renderedHelicopters = true;
		}
		function renderNAVAIRES(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("navaires");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAVAIRES Entrance", fileName: "entrance.jpg", width: 568, height: 459, caption: "Entrance to NAVAIRES Alameda", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAVAIRES Insignia", fileName: "navaires-logo.jpg", width: 568, height: 459, caption: "Close up of the NAVAIRES Insignia", credit: "Mr. Robert M. Cieri" }));
			tab.set('content', '<div id="navaires" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "navaires", images: arrImages, thumbnailCaptions: true });
			renderedNAVAIRES = true;
		}
		function renderInsignia(tab)
		{
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("insignia");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NADEP Machinist Patch", fileName: "nadep-machinist.jpg", width: 288, height: 288, caption: "Machinist Patch Alameda Naval Aviation Depot", credit: "Mr. Frank Contreras" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "VS-82 Shield", fileName: "VS-82-shield.jpg", width: 523, height: 505, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Naval Air Rework Facility", fileName: "NARF-Logo.jpg", width: 336, height: 304, caption: "" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda Retired Employee Lapel pin", fileName: "NAS-Alameda-Pin.jpg", width: 464, height: 560, caption: "NAS Alameda Retired Employee Lapel pin.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Insignia for: VAQ-308", fileName: "VAQ-308-Insignia.jpg", width: 568, height: 397, caption: "Insignia for: VAQ-308", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Insignia for: NARU", fileName: "NARU-Insignia.jpg", width: 568, height: 459, caption: "Insignia for: NARU", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Naval Air Reserve", fileName: "NavAirReserveInsignia.jpg", width: 568, height: 459, caption: "Naval Air Reserve", credit: "Mr. William T. Larkins" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda Stickers from WW II", fileName: "nas-alameda-stickers-wwii.jpg", width: 568, height: 626, caption: "NAS Alameda Stickers from WW II", credit: "Mr. David F. Schauf" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda Patch", fileName: "nas-alameda-patch.jpg", width: 568, height: 459, caption: "NAS Alameda Patch", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "EA-6B Prowler Patch", fileName: "ea-6b-prowler.jpg", width: 568, height: 459, caption: "Prowler EA-6B &quot;Type&quot; Patch. Every Tactical Electronics Warfare Squadron is authorized to wear this patch.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "EA-6B Prowler 20th Anniversary Patch", fileName: "ea-6b-prowler-20th.jpg", width: 568, height: 459, caption: "EA-6B Prowler 1990 20th Anniversary Patch. Every Tactical Electronics Warfare Squadron was authorized to wear this patch in 1990.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda Tab", fileName: "nas-alameda-tab.jpg", width: 568, height: 140, caption: "NAS Alameda UIM Shoulder Tab", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAVAIRES Alameda Tab", fileName: "navaires-alameda-tab.jpg", width: 568, height: 133, caption: "NAVAIRES Alameda UIM Shoulder Tab", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Carrier Air Wing 13", fileName: "DN-SC-93-00746.jpg", width: 740, height: 551, caption: "DN-SC-93-00746 1 January 1987 Insignia for: Carrier Air Wing 13, its component squadrons and the ship's logo for the aircraft carrier USS CORAL SEA (CV-43). US Navy illustration.", credit: "Mr. Robert M. Cieri" }));
			tab.set('content', '<div id="insignia" class="carousel-container"><ol class="carousel-list"></ol></div>');
			YAHOO.ANAM.Gallery.render( { id: "insignia", images: arrImages, thumbnailCaptions: true });
			renderedInsignia = true;
		}
		YAHOO.util.Event.onDOMReady(function (ev) {
			var arrImages = [];
			YAHOO.ANAM.Gallery.setCategory("nas");
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Oil Refinery - 1879", fileName: "oil-refinery-1879.jpg", width: 568, height: 334, caption: "An artist rendition of the Bay Area's major oil refinery that opened at Alameda Point in 1879. At this point in time, oil had begun flowing up and down the state. This facility was ideally located across from San Francisco and replaced other smaller refineries located in California." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Borax Works - 1893", fileName: "borax-plant.jpg", width: 568, height: 380, caption: "Constructed in 1893, the Pacific Coast Borax company operated along Alameda's western shoreline until approximately 1930. Built along the rails of the Pacific Coast Railroad and using its own wharf to deliver coal, it was the largest Borax Refinery in the world at the time and reportedly one of the first reinforced concrete buildings in the United States." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda under<br/>construction in 1940", fileName: "1940-construction.jpg", width: 639, height: 391, caption: "NAS Alameda under construction in 1940." }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda 1941", fileName: "nas-jan-41.jpg", width: 568, height: 529, caption: "NAS Alameda under construction. (photo taken in January 1941)" }));
			//arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda 1942", fileName: "nas-jan-42.jpg", width: 568, height: 599, caption: "NAS Alameda under construction. (photo taken in January 1942)" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Propeller Shop - 1945", fileName: "prop-shop.jpg", width: 640, height: 523, caption: "Assembly & Repair Propeller Shop, NAS Alameda, CA. - 5 September 1945." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "F-6F Engine Line - 1945", fileName: "f6f-engine-line.jpg", width: 640, height: 511, caption: "Assembly & Repair, F-6F Engine Build-up Line, NAS Alameda, CA. - 5 September 1945." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "F-6F Assembly Line - 1945", fileName: "f6f-assembly-line.jpg", width: 640, height: 547, caption: "Assembly & Repair, F-6F Assembly Line, NAS Alameda, CA. - 5 September 1945." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda<br/>17th Anniversary", fileName: "nas-anniversary-17.gif", width: 568, height: 683, caption: "Aerial shot of the base and lagoon with the USS Hancock (CV-19), USS Kearsarge (CV-33), and USS Yorktown (CV-10) in port for the 17th Anniversary of the base opening. (from The Carrier newspaper dated November 1, 1957)" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A-4 Skyhawk Line", fileName: "a4-line.jpg", width: 591, height: 480, caption: "A-4 Skyhawk line at Naval Aviation Depot (Rework Facility) Alameda, CA." }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda<br/>28 September 1984", fileName: "DN-SC-85-01721.jpg", width: 740, height: 498, caption: "(28 September 1984) Aerial view of (NAS) Naval Air Station, Alameda, California. (U.S. Navy photo).<br/><br/><a href='/images/gallery/nas/DN-SC-85-01721-full.jpg' target='_blank'>View full size image</a>", credit: "Mr. Robert M. Cieri" }));
			//have big images
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda<br/>March 2004", fileName: "AerialNASAlameda31704.jpg", width: 568, height: 371, caption: "NAS Alameda March 2004.", credit: "Mr. William T. Larkins" }));
			// new
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Welcome Aboard card for 20 April 1951", fileName: "welcome-aboard-042051.jpg", width: 718, height: 622, caption: "Welcome Aboard card for 20 April 1951, welcoming other reserve squadrons to NAS Alameda.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "A high altitude aerial view of NAS Alameda", fileName: "DN-ST-97-01688.jpg", width: 740, height: 535, caption: "DN-ST-97-01688 (30 July 1995) A high altitude overhead aerial view of Naval Air Station Alameda showing the airfield and aircraft carrier pier complex hosting Pacific based surface forces. The aircraft carrier USS Kitty Hawk (CV-63) is moored to the left. The former Essex class anti-submarine carrier Hornet (CVS-12) is moored to the right. The Hornet has been deleted from the naval register and will become a floating musem. U.S. Navy photo by PH2 Bruce Trombecky.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Aerial view of NAS Alameda and its environs", fileName: "DN-ST-95-01802.jpg", width: 740, height: 498, caption: "DN-ST-95-01802 (1 August 1993) An aerial view of the Naval Air Station (NAS) Alameda and its environs. Beyond NAS Alameda is the island city of Alameda, California itself. To the left is the Oakland Naval Supply Center. U.S. Navy photo.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "Air Show & Open House Program 1965", fileName: "Air-Show-Program-1965.jpg", width: 464, height: 560, caption: "NAS Alameda Air Show & Open House Program 1965.", credit: "Mr. Robert M. Cieri" }));
			arrImages.push(new YAHOO.ANAM.Gallery.ImageObject({ title: "NAS Alameda<br/>Rear Gate 1979", fileName: "rear-gate-1979.jpg", width: 740, height: 468, caption: "NAS Alameda Rear Gate, taken in late 1979 or early 1980.  LCpl Kim Rodecker (left), Cpl of the guard (middle), Unknown Marine (right)." }));

			var tabView = new YAHOO.widget.TabView('anam-gallery');  

			YAHOO.ANAM.Gallery.render( { id: "nas", images: arrImages, thumbnailCaptions: true });
			YAHOO.ANAM.Gallery.setItemSelected(3, "nas", arrImages); // pre-select image

			// content for these tabs will not be loaded until tab selected
			tabView.addTab(new YAHOO.widget.Tab({ label: 'Personnel', content: contentLoading }));
			tabView.addTab(new YAHOO.widget.Tab({ label: 'Historic', content: contentLoading }));
			tabView.addTab(new YAHOO.widget.Tab({ label: 'WAVES', content: contentLoading }));
			tabView.addTab(new YAHOO.widget.Tab({ label: 'Aircraft', content: contentLoading }));
			tabView.addTab(new YAHOO.widget.Tab({ label: 'Helicopters', content: contentLoading }));
			tabView.addTab(new YAHOO.widget.Tab({ label: 'Ships', content: contentLoading }));
			tabView.addTab(new YAHOO.widget.Tab({ label: 'NAVAIRES', content: contentLoading }));
			tabView.addTab(new YAHOO.widget.Tab({ label: 'Insignia', content: contentLoading }));
			
			tabView.on('activeTabChange', handleTabEvent);
		});
	</script>
</asp:Content>
