<%@ Page Language="C#" MasterPageFile="~/Masterpages/Site.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Visitor Information" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<script runat="server">
</script>
	
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
    <!--script type="text/javascript" src="http://www.google.com/jsapi?key=ABQIAAAAigrfR9_ZxlhmIjNI7qXtTxRtBRisoF0cOBnNurd9mSPipkwn-RTzjwZMBHXKaE_Iu3aBaTCSJ6Gtjg"></script--> 
	<script type="text/javascript" src="http://www.google.com/jsapi?key=AIzaSyD3wLXTX-wUr32TNYEu6Zg1YxHPNqrsyc4"></script> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
<!--
Address 2151 Ferry Point Alameda CA 94501
(37.782608, -122.298500)
  
Latitude 37.782608°

Longitude -122.298500°

KEY: ABQIAAAAigrfR9_ZxlhmIjNI7qXtTxRtBRisoF0cOBnNurd9mSPipkwn-RTzjwZMBHXKaE_Iu3aBaTCSJ6Gtjg
NEW KEY: AIzaSyD3wLXTX-wUr32TNYEu6Zg1YxHPNqrsyc4

http://www.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=2151+Ferry+Point,+Alameda,+CA&sll=37.0625,-95.677068&sspn=47.483365,113.818359&ie=UTF8&hq=&hnear=2151+Ferry+Point,+Alameda,+California+94501&z=16
http://maps.google.com/maps/api/geocode/json?address=2151+Ferry+Point,+Alameda,+California+94501&sensor=false
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAAigrfR9_ZxlhmIjNI7qXtTxRtBRisoF0cOBnNurd9mSPipkwn-RTzjwZMBHXKaE_Iu3aBaTCSJ6Gtjg" type="text/javascript"></script>
-->
	<h1>Visitor Information</h1>
	<div style="font-weight:bold; margin-top:1em; text-align:center;">
        <div id="map" style="width:740px; height:340px; border:none;">
		    <img src="/images/map.jpg" width="434" height="307" alt="" />
            <span id="btnGoogle" class="yui-button" style="display:block; margin-top:3px; width:434px; margin:0 auto;">
		        <span class="first-child">
			        <button type="button">Click here for Google Maps view</button>
		        </span>
	        </span>
        </div>
		<p style="margin-top:0.5em;">
			Alameda Naval Air Museum
			<img src="/images/map-locator.gif" width="40" height="24" border="0" alt="" />
			is located at 2151 Ferry Point Road, Alameda (Building 77 at Alameda Point)
		</p>
		<p>
			Open Saturday and Sunday from 10:00am to 4:00pm.&nbsp;&nbsp;Additional archive hours<br />
			are available, by appointment, Wednesdays noon to 4:00pm.<br />
			Call 510-522-4262 for more information.
		</p>
		<p>Admission is $5.00<br />(free for under twelve and active military in uniform or with ID<br />and for organized youth groups by appointment).</p>
		<div>
			Free Parking and Wheelchair Accessible&nbsp;
			<img src="/images/map-icon-accessible.gif" width="26" height="26" alt=""/>
		</div>
	</div>
	<p style="margin-top:1em;"><b>From San Francisco:</b> Take the Bay Bridge East, then follow the sign to "S. 880/ San Jose/ Alameda".  After 3 miles, take the "Broadway/ Alameda" exit, and merge into the right lane.  Turn right at the light onto 5th St., and follow for 1 mile, merging into the left lane.  Take "Webster Street Tube" into Alameda.  Follow Webster St. to W. Atlantic Ave. (1st light), and turn right.  Follow Atlantic Ave. for 1 mile to Alameda Point and continue in another 1/3 mile.  Turn right on Ferry Point.</p>
	<p><b>From N. 880 (San Leandro, Hayward):</b> Follow N. 880 to Oakland, and take the Broadway Exit.  Turn right on Broadway (follow Alameda signs), right onto 7th, right onto Webster and through the Webster St. tunnel into Alameda.  Follow S.F. directions from above.</p>
	<p><b>From Orinda, Lafayette, Concord, Moraga:</b> Get on Highway 24(west) to 980/880(Downtown Oakland).  Exit on 12th street and go straight onto Brush. Go left on 5th st to the Alameda exit to go to Webster Tunnel. Follow S.F. directions from above.</p>
	<p><b>From San Francisco via the <a href="http://www.eastbayferry.com/when/sfweekends.html" target="_blank" style="text-decoration:underline;">Alameda Oakland Ferry</a>:</b> Depart from either Fishermans Wharf (Pier 41) or the Ferry Building and take the <a href="http://www.eastbayferry.com/what/transit.html" target="_blank" style="text-decoration:underline;">AC Transit 50 bus</a> across the base to the museum.</p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
	    google.load("maps", "2.x");
	    YAHOO.ANAM.Common.googleMap = function () {
	        var map = new google.maps.Map2(document.getElementById("map"));
	        var latlng = new google.maps.LatLng(37.7823117, -122.2978420);
	        map.removeMapType(G_HYBRID_MAP);
	        map.setCenter(latlng, 13);
	        var mapControl = new GMapTypeControl();
	        map.addControl(mapControl);
	        map.addControl(new GLargeMapControl());
	        var marker = new GMarker(latlng, { title: "Alameda Naval Air Museum", draggable: false });
	        map.addOverlay(marker);
	    } 
	    YAHOO.util.Event.onContentReady("btnGoogle", function () {
	        var btn = new YAHOO.widget.Button("btnGoogle");
	        btn.on("click", YAHOO.ANAM.Common.googleMap);
	    });
	</script></asp:Content>
