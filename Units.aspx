<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Units" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<style type="text/css" media="screen">
		#anam-units .yui-nav em {
			color: #008;
			font-weight: bold;
		}
		#anam-units .yui-nav .selected em {
			color: #FFF;
		}
		#anam-units .yui-content dt {
			color: #000080;
			font-size: 108%; /* 14px */
			font-weight: bold;
			margin: 0.5em 0 0.25em 0;
		}
		#anam-units .yui-content dl {
			margin: 0 0 0.5em 0;
		}
		#anam-units .yui-content dt a {
			font-size: 77%;	/* 10px */
			font-weight: normal;
			padding-left: 1em;
		}
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<h1>Military Units Stationed at NAS Alameda</h1>
	<p>We are continully working to preserve the history of NAS Alameda and her aviation predecessors at Alameda Point, and you can help by sharing information about the units, squadrons and ships stationed at NAS Alameda during your time of service.</p>
	<p style="margin-top:1em;">Any old photos, news-clippings, or documentation related to NAS Alameda is vital to our mission. We can digitally scan these items and return to you if necessary. Many former base personnel have spent time jotting down their recollections and forwarding in an e-mail. We're not looking for award winning essays from polished authors. Just the things you remember from your days stationed at Alameda. Even a few paragraphs are valuable to us. Others, who have the capability to scan their photos, send us the digital images of themselves or the base during that same period.  Please contact <a href="Contact.aspx">Larry Pirack</a> (Curator) or <a href="Contact.aspx">Marilyn York</a> (President) if you are able to provide us with any original photographs, images or artifacts, and please email our <%=ANAM.MailUtil.ObfuscateEmail("anam.webmaster@gmail.com", "webmaster")%> with any additions or updates.</p>
	<div id="anam-units" class="yui-navset">
		<ul class="yui-nav">
			<li class="selected"><a href="#aircraft"><em>Aircraft</em></a></li>
			<li><a href="#helicopters"><em>Helicopters</em></a></li>
			<li><a href="#ships"><em>Ships</em></a></li>
			<li><a href="#carriers"><em>Aircraft Carriers</em></a></li>
			<li><a href="#intel"><em>Intelligence</em></a></li>
		</ul>            
		<div class="yui-content">
			<dl id="aircraft">
				<dt>CVWR-30 Carrier Air Wing Reserve Thirty<a href="/units/aircraft/cvwr-30.aspx">(more details...)</a></dt>
				<dd>
					Carrier Air Wing Reserve THIRTY was established on 1 April 1970 at NAS Alameda. It was composed of an Air Wing Staff, two Fighter Squadrons, three Attack Squadrons, one Light Reconnaissance Squadron, one Tactical Electronic Warfare Squadron, one Early Warning Squadron and one Aerial Refueling Squadron.
				</dd>

				<dt>PATSU-8 Patrol Service Aircraft Unit 8</dt>
				<dd>
					Supported various patrol squadrons of PBMs, PVs, and PB4Ys that passed through NAS Alameda during the Pacific war.
				</dd>

				<dt>SOSU-3 Scout and Observation Unit 3</dt>
				<dd>
					Stationed at NAS Alameda: 1942 to 19?? --
					SOSU-3 supported the various aircraft assigned to the battleships and cruisers in San Francisco Bay. The unit functioned similar to a Carrier Service Unit (CASU), but serviced and trained personnel in the operation of catapult and scouting aircraft.
				</dd>
				
				<dt>VA-303 "Golden Hawks" Attack Squadron 303<a href="/units/aircraft/va-303.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1970 to 1984 --
					VA-303 was a reserve squadron established as part of a reorganization intended to increase the combat readiness of the Naval Air Reserve Force. VA-303 was the first squadron assigned the VA-303 and VFA-303 designation.
				</dd>

				<dt>VA-304 "Firebirds" Attack Squadron 304<a href="/units/aircraft/va-304.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1970 to 1994 --
					VA-304 was a reserve squadron established as part of a reorganization intended to increase the combat readiness of the Naval Air Reserve Force. Elements of reserve unit, VA-20G3, were used to form the newly established squadron. VA-304 was the first reserve squadron to receive and operate the A-6E Intruder.
				</dd>
				
				<dt>VAQ-130 "Zappers" Tactical Electronics Warfare Squadron 130<a href="/units/aircraft/vaq-130.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1967-1974 --
					Dating from the Eisenhower administration, the Zappers of VAQ-130 have led the way in Navy electronic warfare for more than 40 years. Originally designated VAW-13, the unit is the longest serving carrierbased electronic warfare squadron in Navy history, and has flown the Navy's three primary tactical jamming aircraft into the heaviest, most threatening electronic environments ever faced by manned aircraft.
				</dd>

				<dt>VAQ-131 "Hollygreens" Tactical Electronics Warfare Squadron 131<a href="/units/aircraft/vaq-131.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1968-1971 --
					Formed 1 November 1968 when VAH-4 was redesignated. Operated KA/EKA-3Bs. Detachment to Gulf of Tonkin on USS Kitty Hawk (CVA-63) and to Mediterranean on USS John F. Kennedy (CVA-67). Moved to NAS Whidbey Island, Washington May 1971 to transition to EA-6B Prowler.
				</dd>

				<dt>VAQ-132 "Scorpions"  Tactical Electronics Warfare Squadron 132<a href="/units/aircraft/vaq-132.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1968-1971 --
					Formed 1 November 1968 when VAH-2 was redesignated. Detachments to USS Constellation (CVA-64). Combat cruises on USS Enterprise (CVAN-65) and USS America (CVA-66). Moved to NAS Whidbey Island, Washington 15 January 1971 and transitioned to EA-6B.
				</dd>
				
				<dt>VAQ-133 "Wizards" Tactical Electronics Warfare Squadron 133<a href="/units/aircraft/vaq-133.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1969-1971 --
					Established 4 March 1969. Deployments to Gulf of Tonkin on USS Constellation (CVA-64) and USS Kitty Hawk (CVA-63). Stood down August 1971. Reactivated 4 August 1972 at NAS Whidbey Island, Washington with EA-6B.
				</dd>

				<dt>VAQ-134 "Garudas" Tactical Electronics Warfare Squadron 134<a href="/units/aircraft/vaq-134.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1969-1971 --
					Established 17 June 1969 with KA-3B and EKA-3B. 2 combat cruises on USS Ranger (CVA-61). Stood down July 1971. Transitioned to EA-6B May 1972.
				</dd>

				<dt>VAQ-135 "Black Ravens" Tactical Electronics Warfare Squadron 135<a href="/units/aircraft/vaq-135.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1969-1974 --
					Activated 15 May 1969. Deployments and detachments to Southeast Asia on USS Coral Sea (CVA-43), USS Hancock (CVA-19), USS Kitty Hawk (CVA-63), and to Mediterranean on USS Franklin D. Roosevelt (CVA-43), USS Forrestal (CVA-59). Transition to EA-6B July 1974.
				</dd>
				
				<dt>VAQ/VAK-208 "Jockeys" Tactical Aerial Refueling Squadron 208<a href="/units/aircraft/vak-208.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1970 to 1989 --
					When the Naval Air Reserve was reorganized in 1970, Tactical Electronic Warfare Squadron 208 was established on 31 July at NAS Alameda, California, as part of Carrier Air Wing Twenty. Equipped with KA-3Bs to support CVWR-20 operations, VAQ-208 also began providing air refueling and pathfinding for Navy and Marine tactical aircraft being ferried to Southeast Asia.
				</dd>
				
				<dt>VAQ/VAK-308 "Griffins" Tactical Aerial Refueling Squadron 308<a href="/units/aircraft/vak-308.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1970 to 1989 --
					VAK-308 was the first A3 Skywarrior and the first Heavy Attack Squadron ever assigned to the Naval Air Reserve. VAQ-308 along with its later formed sister squadron, VAQ-208, established a new precedence by flying combat support missions in S.E. Asia during the Vietnam War.
				</dd>
				
				<dt>VAW-13 "Zappers" Carrier Airborne Early Warning Squadron 13<a href="/units/aircraft/vaw-13.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1961 to 1968 --
					VAW-13 was born on Agana, Guam 1 September 1959. The planes assigned to the squadron were two twin Engine TF's and the AD 5 Q Sky Raider, referred to by squadron personnel as "Queens". The designation was changed several years later to EA 1 F. The Tail Code was V R "Victor Romeo" and the call sign on the UHF Radio was "Robinson".  The Squadron was known as the "Zappers" and the Green Dragon with Lighting Bolts became the Squadron Patch.
					<ul>
						<li><a href="http://www.VAW-13Zappers.com" target="_blank">http://www.VAW-13Zappers.com</a></li>
					</ul>
				</dd>
				
				<dt>VMA-133 "Dragons" Marine Attack Squadron 133<a href="/units/aircraft/vma-133.aspx">(more details...)</a></dt>
				<dd>
					VMA-133 was a U.S. Marine Corps reserve fighter squadron. Known as the "Dragons", the squadron was part of Marine Aircraft Group 42 of the 4th Marine Aircraft Wing. The Dragons flew the Douglas A-4 Skyhawk. VMA-133 was deactivated in 1992.
					<p>History: During WWII the squadron was known as Marine Torpedo Bombing Squadron 133 (VMTB-133) and originated out of El Toro in San Diego and Ewa Field in Hawaii. The squadron saw action during the Bouganville and Philippine campaigns. VMTB-133 was deactivated on 1 August 1945.</p>
					<ul>
						<li><a href="http://www.skyhawk.org/4e/vma133/vma133.htm" target="_blank">http://www.skyhawk.org/4e/vma133/vma133.htm</a></li>
					</ul>
				</dd>

				<dt>VO-67 Observation Squadron Sixty-Seven</dt>
				<dd>
					The Navy's Observation Squadron Sixty-Seven (VO-67) existed for just a little over a year, a total of 500 days, from February 1967 to July 1968. The "Observation" in the name is meaningless. It hid, at the time, what was a highly classified mission. The "67" stood for the year it came into being. VO-67 was a vital part of project Muscle Shoals. The mission of the project was to detect, classify, hinder and penalize the North Vietnamese Army infiltration into the South. Steel Tiger was the code name for the Ho Chi Minh trail in Laos. IGLOO WHITE was the code-name for the technologies associated with the project located at NKP and operated by USAF Task Force Alpha.
					<ul>
						<li><a href="http://www.vo-67.org/vo67_opening.html" target="_blank">http://www.vo-67.org/vo67_opening.html</a></li>
					</ul>
				</dd>
				
				<dt>VP-9 Patrol Squadron</dt>
				<dd>
					In the 1950's and 1960's, Patrol Squadron NINE participated in numerous deployed operations throughout Asia and the Northern Pacific including joint night operations with Marine Corps fighters in which flares were dropped to illuminate significant North Korean targets for attack aircraft.  Other significant milestones included changing homeports to NAS Alameda, CA, and NAS Moffett Field, CA, transition from PB4Y-2 aircraft to P2V-5 in 1953. In December 1963, VP-9 received its first P-3A Orion, and NAS Moffett Field, California became its homeport.
					<ul>
						<li><a href="http://www.vp9.navy.mil/history.htm" target="_blank">http://www.vp9.navy.mil/history.htm</a></li>
					</ul>
				</dd>
				
				<dt>VP-44 Patrol Squadron</dt>
				<dd>
					Stationed at NAS Alameda: 7 December 1941 to 19??
					VP-44 was the first patrol squadron to use NAS Alameda. The squadron came onboard 7 December 1941.
					<ul>
						<li><a href="http://www.vpnavy.com/vp44.html" target="_blank">http://www.vpnavy.com/vp44.html</a></li>
					</ul>
				</dd>
				
				<dt>VR-2 - Naval Air Transport Unit</dt>
				<dd>
					Stationed at NAS Alameda: 1 April 1942 to 1997 --
					VR-2 was the Navy's second Naval Air Transport Squadron. The unit was formed at NAS Alameda. It's first operational flight to Hawaii was on 15 May 1942. During its deployment in NAS Alameda, VR-2 operated some 54 different types of aircraft, including: Consolidated PB2Y Coronado, PBM Mariner, Martin PB2M-1R Mars.
					<ul>
						<li><a href="http://www.vpnavy.com/vr2_1942.html" target="_blank">US Navy Patrol Squadrons - VR-2 History</a></li>
					</ul>
				</dd>
				
				<dt>VR-21 Tactical Support Squadron</dt>
				<dd>
					<ul>
						<li><a href="http://www.koreanwar.org/html/units/navy/vr21.htm" target="_blank">Korean War Project - VR-21 Posting Board</a></li>
					</ul>
				</dd>
				
				<dt>VR-44 Navy Transport Squadron 44</dt>
				<dd>
					Deactivated in 1950.
					<p>History: Received the first Lockheed Constitution R6V ever built on 2 February 1949. One of only two ever built by Lockheed, Ship #1 (BuNo 85163), was used to fly between NAS Alameda and Pearl Harbor, Hawaii. Later, the second Constitution (BuNo 85164) was also sent to NAS Alameda and flown by VR-44 on an eastern route to Washington, D.C.</p>
				</dd>
				
				<dt>VR-55 Fleet Logistics Support Squadron 55<a href="/units/aircraft/vr-55.aspx">(more details...)</a></dt>
				<dd>
					VR-55 was established in 1976 at NAS Alameda and was the first Naval Air Reserve unit to fly the McDonnell-Douglas C-9B Skytrain II jet.
				</dd>
				
				<dt>VSF-1 "Warhawks" Anti-Submarine Fighter Squadron One<a href="/units/aircraft/vsf-1.aspx">(more details...)</a></dt>
				<dd>
					Stationed at NAS Alameda: 1965 to 19?? --
					VSF-1 was established on 1 July 1965.  On 1 July 1966 VSF-1 was split in half -- One half remained as VSF-1 and deployed on the <a href="http://en.wikipedia.org/wiki/USS_Shangri-La_(CV-38)" target="_blank">USS Shangri-La (CVS-38)</a> to the Mediterranean and the other half was called VSF-1 Det Alameda which was later renamed VSF-3 Chessmen.
					<ul>
						<li><a href="http://www.skyhawk.org/3e/vsf1/vsf1.htm" target="_blank">Skyhawk Association - VSF-1 Warhawks page</a></li>
						<li><a href="http://www.ebdir.net/vsf1/" target="_blank">Anti-Submarine Warfare Fighter Squadron One VSF-1 War Eagles</a></li>
					</ul>
				</dd>

				<dt>VS-82</dt>
				<dd>
					<p>With the decommissioning of the 800 series of West Coast Reserve VS squadrons, VS-82 was formed after progressing through designations VS63G1, G2 and 80G2 through the years of 1968 & 69. Formal commissioning was July 1970 and decommissioning was December 1974.</p>
					<p>VS-82 was one of three West Coast Reserve VS Squadrons of CVSGR-80. Both the Grumman S-2D and E were flown accident free this entire time. ACDUTRA cruises were at NAS Alameda, North Island, Whidbey Island and aboard USS Ticonderoga (CVS-14) in 1971. Commanding Officers were: CDR’s Carl Frudden, Vince Anzilotti, Robert Beavis and Robert Lawes. VS-82 was the first VS squadron to be de-commissioned in the Air Group.</p>
				</dd>
			</dl>
			<div id="helicopters">
				<dl>
					<dt>HM-15 "Blackhawks" Helicopter Mine Countermeasures Squadron Fifteen<a href="/units/helicopters/hm-15.aspx">(more details...)</a></dt>
					<dd>
						Stationed at NAS Alameda: 1987 to 1996 --
						Helicopter Mine Countermeasures Squadron FIFTEEN (HM-15) "Blackhawks" was established on 2 January 1987 at Naval Air Station Norfolk, Virginia. The first of two deployable, Airborne Mine Countermeasures (AMCM) squadrons to receive the Sikorsky MH-53E "Sea Dragon" helicopter. On 21 April 1987, HM-15 was ordered by the CNO to change duty stations to NAS Alameda.
					</dd>

					<dt>HM-19 "Golden Bears" Helicopter Mine Countermeasures Squadron Nineteen<a href="/units/helicopters/hm-19.aspx">(more details...)</a></dt>
					<dd>
						Stationed at NAS Alameda: 1989 to 1994 --
						HM-19 was established at NAS Alameda on 9 January 1989 as the Naval Reserve's second Airborne Mine Countermeasures (AMCM) squadron, flying the RH-53D Sea Stallion Helicopter operating under the control of Commander, Helicopter Wing Reserve.
					</dd>

					<dt>HS-85 "Golden Gater's" Helicopter Anti-Submarine Squadron 85<a href="/units/helicopters/hs-85.aspx">(more details...)</a></dt>
					<dd>HS-85 was established as Helicopter Anti-Submarine Squadron Eight Five on 1 July 1970 at NAS Alameda.</dd>
				</dl>
			</div>
			<div id="ships">
				<dl>
					<dt>USS Texas (CGN-39)<a href="http://en.wikipedia.org/wiki/USS_Texas_(CGN-39)" target="_blank">(more details...)</a></dt>
					<dd>The second Virginia-class nuclear guided missile cruiser. She was the third ship of the United States Navy to be named in honor of Texas, and completed WestPac deployments in 1991 in support of Operation Desert Storm.</dd>
				    
					<dt>USS Arkansas (CGN-41)<a href="http://en.wikipedia.org/wiki/USS_Arkansas_(CGN-41)" target="_blank">(more details...)</a></dt>
					<dd>Virginia-class nuclear-powered guided missile cruiser, in service during the 1980s and 1990s. This ship was affectionately known as The "Ark" and "Pigboat" (referencing her mascot, the Arkansas Razorback) by her crew members.</dd>
				    
					<dt>USS Samuel Gompers (AD-37)<a href="http://en.wikipedia.org/wiki/USS_Samuel_Gompers_(AD-37)" target="_blank">(more details...)</a></dt>
					<dd>A Destroyer tender, the first of its class, and designed to be a floating repair shop for ships of the U.S. Navy either in port or at sea. It was named for Samuel Gompers, a distinctive American labor leader during the late nineteenth Century.</dd>
				</dl>
			</div>
			<div id="carriers">
				<dl>
					<dt>USS Abraham Lincoln (CVN-72)<a href="http://en.wikipedia.org/wiki/CVN-72" target="_blank">(more details...)</a></dt>
					<dd>
						Stationed at NAS Alameda: 1991 to 1995 --
						USS Abraham Lincoln (CVN 72) is America's fifth Nimitz class carrier. The ship was named in honor of the nation's sixteenth president and is the second ship of the line to bear the name. The keel was laid on 3 November 1984, at Newport News, VA. Four years later, the ship was christened and began a series of performance trials leading up to commissioning on 11 November 1989, in Norfolk, Va.
					</dd>
				</dl>
			</div>
			<div id="intel">
				<dl>
					<dt>FIRSTPAC-1187 Fleet Intelligence Rapid Support Team Pacific 1187<a href="/units/intel/firstpac-1187.aspx">(more details...)</a></dt>
                    <dd></dd>
				</dl>
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		var tabView = new YAHOO.widget.TabView('anam-units');  
	</script>
</asp:Content>
