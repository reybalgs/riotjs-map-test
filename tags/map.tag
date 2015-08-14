<map id="map">

<script>

	var self = this;

 	var map,
 		panToFocal,
 		
 		mapMarkers = [],
		regMarker = {
			url: 'images/pin_red.png',
			// This marker is 20 pixels wide by 32 pixels tall.
			size: new google.maps.Size(25, 36),
			// The origin for this image is 0,0.
			origin: new google.maps.Point(0,0),
			// The anchor for this image is the base of the flagpole at 0,32.
			anchor: new google.maps.Point(12, 36)
 		},
		mwwMarker = {
			url: 'images/pin_green.png',
			// This marker is 20 pixels wide by 32 pixels tall.
			size: new google.maps.Size(25, 36),
			// The origin for this image is 0,0.
			origin: new google.maps.Point(0,0),
			// The anchor for this image is the base of the flagpole at 0,32.
			anchor: new google.maps.Point(12, 36)
 		},
 		regMarkerFaded = {
			url: 'images/pin_red_faded.png',
			// This marker is 20 pixels wide by 32 pixels tall.
			size: new google.maps.Size(25, 36),
			// The origin for this image is 0,0.
			origin: new google.maps.Point(0,0),
			// The anchor for this image is the base of the flagpole at 0,32.
			anchor: new google.maps.Point(12, 36)
 		},
 		mwwMarkerFaded = {
			url: 'images/pin_green_faded.png',
			// This marker is 20 pixels wide by 32 pixels tall.
			size: new google.maps.Size(25, 36),
			// The origin for this image is 0,0.
			origin: new google.maps.Point(0,0),
			// The anchor for this image is the base of the flagpole at 0,32.
			anchor: new google.maps.Point(12, 36)
 		},
		styles = [{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2f2f2"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"on"}]},{"featureType":"poi","elementType":"labels.text","stylers":[{"saturation":"-100"}]},{"featureType":"poi","elementType":"labels.text.fill","stylers":[{"lightness":"52"},{"gamma":"1.00"}]},{"featureType":"poi","elementType":"labels.text.stroke","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels.icon","stylers":[{"saturation":"-100"}]},{"featureType":"poi.attraction","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"poi.attraction","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi.government","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi.medical","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#e5e9bb"}]},{"featureType":"poi.park","elementType":"labels.text","stylers":[{"saturation":"-100"}]},{"featureType":"poi.park","elementType":"labels.icon","stylers":[{"saturation":"-100"}]},{"featureType":"poi.place_of_worship","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi.school","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi.school","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"poi.sports_complex","elementType":"geometry.fill","stylers":[{"visibility":"off"}]},{"featureType":"poi.sports_complex","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},{"featureType":"road","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"gamma":"1.00"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"visibility":"on"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.highway.controlled_access","elementType":"geometry.fill","stylers":[{"color":"#f8bb1b"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#46bcec"},{"visibility":"on"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#62cccb"}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"water","elementType":"labels.text.stroke","stylers":[{"visibility":"off"}]}],

 		infowindow = new google.maps.InfoWindow({
    		content: ''
		});

	self.on('mount',function(){
		console.log('map mount');
	});

	RiotControl.on('map_init', function(stateObj){
		self.initializeMap();
		self.drawPoints();
	})

	RiotControl.on('state_changed', function(stateObj){
		filterPoints(stateObj.state)
		self.update();
	})

	// RiotControl.on('map_init', function(stateObj){
	// 	self.update();
	// })

	self.initializeMap = function() {
	  var mapProp = {
	    center:new google.maps.LatLng(39.961455,-75.148097),
	    zoom:12,
	    mapTypeId:google.maps.MapTypeId.ROADMAP,
	    styles: styles,
	  };

	  map = new google.maps.Map(document.getElementById("map"),mapProp);
	}

	function drawPoint(pointData){
		var p = pointData,
			marker;

		if(p.mww) marker = mwwMarker;
		else marker = regMarker;

		var point = new google.maps.Marker({
			id: p.id,
			title: p.title,
			mww: p.mww,
			desc: p.desc,
			region: p.region,
			position: new google.maps.LatLng(p.lat,p.lon),
			icon: marker,
		});
		
		point.setMap(map);

		mapMarkers.push(point);
		
		google.maps.event.addListener(point, 'click', (function (point) {
	        return function () {
        	 	_.each(mapMarkers, function(marker){
	        	 	marker.setMap(null);
	        		if(marker.mww) marker.setIcon('images/pin_green_faded.png');
	        		else marker.setIcon('images/pin_red_faded.png');
	        	 	marker.setMap(map);
	        	})
	        	if(point.mww) point.icon = mwwMarker;
	        	else point.icon = regMarker;
	            infowindow.setContent('<strong>' + point.title + "</strong><br>" + point.desc);
	            infowindow.open(map, point);
	            map.panTo(this.getPosition());
	            map.setZoom(15);
	        }
    	})(point));
	}

	self.drawPoints = function(stateObj){
		_.each(window.artworks,function(artItem){
			drawPoint({
				id: artItem.id,
				title: artItem.name,
				mww: artItem.mww,
				desc: artItem.desc,
				region: artItem.region,
				lat: artItem.lat, 
				lon: artItem.lon,
			});
		})
	}

	function filterPoints(state){

		var filteredResultCoords = [];//for aggregated zoom/pan functionality
		var avgLat = 0;
		var avgLon = 0;

		_.each(mapMarkers,function(marker){
			if(marker.mww == state.mww || state.mww != true){
				if(marker.region == state.region || state.region == '0'){
					if(state.search =='' || marker.title.toLowerCase().indexOf(state.search.toLowerCase()) != -1 || marker.desc.toLowerCase().indexOf(state.search.toLowerCase()) != -1){
						marker.setVisible(true);
						filteredResultCoords.push({
							lat: marker.position.G,
							lon: marker.position.K,
						});
					}
					else{
						marker.setVisible(false);
					}
				}
				else{
					marker.setVisible(false);
				}
			}
			else{
				marker.setVisible(false);
			}
		})

		if(filteredResultCoords.length > 0){
			_.each(filteredResultCoords,function(coords){
				avgLat += coords.lat;
				avgLon += coords.lon;
			});

			filteredResultCoordsLength = filteredResultCoords.length
			avgLat = avgLat / filteredResultCoordsLength;
			avgLon = avgLon / filteredResultCoordsLength;

			clearTimeout(panToFocal);
		    panToFocal = setTimeout(function(){
		    	infowindow.close();
				if(avgLat != undefined) map.panTo(new google.maps.LatLng(avgLat,avgLon));
		    }, 100);
		    if(filteredResultCoords.length <= 5 ){
		    	map.setZoom(16);
		    }
		    else if(filteredResultCoords.length <= 20 && filteredResultCoords.length > 5){
		    	map.setZoom(15);
		    }
		    else if(filteredResultCoords.length <= 50 && filteredResultCoords.length > 20){
		    	map.setZoom(14);
		    }
		    else{
		    	map.setZoom(13);
		    }
		}
	}

	RiotControl.on('state_changed',function(){
		self.update();
	})

</script>

<style scoped>
	:scope{
		display: block;
		width: 100vw;
		height: 90vh;
		margin: 20px 0;
	}
</style>
</map>