<%@ Page Language="C#" MasterPageFile="~/Masterpages/InteractiveMap.master" Inherits="ANAM.Web.CodeBehindBase" Title="Alameda Naval Air Museum - Interactive Map of NAS Alameda" %>
<%@ OutputCache Duration="60" Location="Client" VaryByParam="none" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" Runat="Server">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> 
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<style type="text/css">
		#map-container {
			width: 740px;
			xxx-height: 660px;
			border-style: none;
		}
		#map {
			float: left;
			width: 800px;
			height: 650px;
			border-right: 1px solid #555;
		}
		.info-window h1 {
			font-size: 100%;
		}
		.info-window p {
			font-size: 95%;
		}
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
	<div id="map"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpJavascript" Runat="Server">
	<script type="text/javascript">
		var map;
		var i = 0;
		var htmls = [];
		var markers = [];
		var infoWindow = new google.maps.InfoWindow();

		var anam_location = new google.maps.LatLng(37.78143240468999, -122.29920992659761);

		// This function picks up the click and opens the corresponding info window
		function markerClick(i) {
			infoWindow.setContent(htmls[i]);
			infoWindow.open(map, markers[i]);
		}

		function createMarker(options) {
			i++;
			var title = (options && options.title ? options.title : ("Marker #" + i));
			var link = (options && options.link ? options.link : title);
			var content = (options && options.content ? options.content : title);
			var marker = new google.maps.Marker({
				draggable: true,
				map: map,
				position: options.latLng,
				title: title
			});

			// To add the marker to the map, call setMap();
			//marker.setMap(map);  

			var html = '<div style="white-space:nowrap;"><b>' + title + '</b><p>' + content + '</p></div>';

			google.maps.event.addListener(marker, "click", function () {
				infoWindow.setContent(html + '<br/>createMarker({ latLng: new google.maps.LatLng' + this.position + ', title: "" });');
				infoWindow.open(map, marker);
			});

			htmls[i] = html;
			markers[i] = marker;
			var link = '<li><a href="javascript:markerClick(' + i + ')">' + link + '<\/a></li>';
			$("ul#navlist").append(link);
		}

		function serializeMarkers() {
			for (var i = 0; i < markers.length; i++) {
			}
		}

		$(document).ready(function () {
			map = new google.maps.Map(document.getElementById("map"), {
				zoom: 14,
				center: anam_location,
				mapTypeId: google.maps.MapTypeId.SATELLITE
			});

			var narfCoords = [
				new google.maps.LatLng(37.785927502231, -122.30744967269136),
				new google.maps.LatLng(37.78380770722537, -122.3075837831421),
				new google.maps.LatLng(37.78362964167677, -122.30470845507814),
				new google.maps.LatLng(37.78354908807335, -122.30471381949617),
				new google.maps.LatLng(37.7835236500751, -122.30437049674227),
				new google.maps.LatLng(37.78461747609433, -122.30423638629152),
				new google.maps.LatLng(37.78465139292143, -122.30479428576662),
				new google.maps.LatLng(37.78579183717175, -122.30466017531587)
			];
			// Construct the polygon
			// Note that we don't specify an array or arrays, but instead just
			// a simple array of LatLngs in the paths property
			var narf = new google.maps.Polygon({
				paths: narfCoords,
				strokeColor: "#FF0000",
				strokeOpacity: 0.8,
				strokeWeight: 2,
				fillColor: "#FF0000",
				fillOpacity: 0.35
			});

			narf.setMap(map);

			createMarker({ latLng: anam_location, title: "Air Terminal", content: "Building 77 is now the home<br/>of the Alameda Naval Air Museum." });
//			createMarker({ latLng: new google.maps.LatLng(37.782498703445384, -122.30622122096254), title: "Building 400" });
//			createMarker({ latLng: new google.maps.LatLng(37.782619535534664, -122.30722973155214), title: "Hangar 11" });
//			createMarker({ latLng: new google.maps.LatLng(37.78255170000006, -122.30519393490984), title: "Hangar 12" });
			createMarker({ latLng: new google.maps.LatLng(37.78222312074816, -122.31009902464582), title: "Flight Control Tower" });
			createMarker({ latLng: new google.maps.LatLng(37.785040375419285, -122.30618903445436), title: "Naval Air Rework Facility", link: "NARF" });
			createMarker({ latLng: anam_location, title: "Alameda Naval Air Museum", link: "Naval Air Museum", content: "Building 77 was formerly the Air Terminal." });
			createMarker({ latLng: new google.maps.LatLng(37.788978840384296, -122.29851657556726), title: "Officers Club" });
			createMarker({ latLng: new google.maps.LatLng(37.78241178901321, -122.3031165640278), title: "Seaplane Hangar 39", });
			createMarker({ latLng: new google.maps.LatLng(37.78231215527025, -122.30107540296747), title: "Seaplane Hangar 40", content: "Now the home of Bladium Sports." });
			createMarker({ latLng: new google.maps.LatLng(37.78219556242178, -122.29919383334352), title: "Seaplane Hangar 41" });
			createMarker({ latLng: new google.maps.LatLng(37.783815126613796, -122.29689786242677), title: "WAVE Barracks", content: "Building 78 - WAVE dormitory barracks." });

			google.maps.event.addListener(map, 'click', function (event) {
				createMarker({ latLng: event.latLng });
			});
		});
	</script>
</asp:Content>
