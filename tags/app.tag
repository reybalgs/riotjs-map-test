<app>	
	<ui></ui>
	<gallery if="{activeMode == 'gallery'}"></gallery>
	<mapping if="{activeMode == 'map'}" id="map"></mapping>
	<listing if="{activeMode == 'list'}"></listing>

	<script>
		var self = this;

		// window.artworks = [
		// 	{name: "Bluecadet", desc:'Oh hi dis where I work',mww: true, lat: 39.973665, lon:-75.134005, region: 1},
		// 	{name: "Will House",desc:'Hi I live here', mww: false , lat: 39.963011, lon:-75.157218, region: 3},
		// 	{name: "Mike's House",desc:'Mike and Steve live here', mww: false , lat: 39.962994, lon:-75.141753, region: 2},
		// 	{name: "Palm", desc:'Eat here often', lat: 39.968810, mww: true , lon:-75.134125, region: 1},
		// 	{name: "Museum", desc:'Most notable from the film "Rocky"', mww: false , lat: 39.965222, lon:-75.180472, region: 4},
		// 	{name: "Sir Caleb's House", desc:"Master Caleb's Residence", mww: true ,lat: 39.967247, lon:-75.164780, region: 4}, 
		// 	{name: "STAR", desc:"Street Tails Animal Rescue", mww: false ,lat: 39.967261, lon:-75.141187, region: 2},
		// 	{name: "Liacouras Center", desc:"Home of Temple Basketball", mww: true ,lat: 39.979908, lon:-75.158308  , region: 5},
		// 	{name: "College of Engineering", desc:"Home of Temple Engineering", lat: 39.982371, lon:-75.153023, region: 5},
		// 	{name: "Temple IBC", desc:"Best Gym", lat: 39.979032, mww: true ,lon:-75.159148, region: 5},
		// 	{name: "Old Temple House", desc:"Lived here once upon a time", mww: false ,lat: 39.985048, lon:-75.163204, region: 5},
		// 	{name: "Meek's Neighborhood", desc:'"Meet me at twentysomething and berks"', mww: true , lat: 39.983646, lon:-75.171908, region: 5}
		// ];

		// riot.route(function(modeP) {
		// 	console.log("ROUTE 2");
		// 	RiotControl.trigger('route_set',{
	 //      		modeParam: modeP,
	 //      	});
		// })

		// riot.route.exec(function(modeP) {
		// 	console.log("ROUTE 1");
	 //      	RiotControl.trigger('route_set',{
	 //      		modeParam: modeP
	 //      	});
  //   	})

		self.on('mount',function(){
			console.log("MOUNT");
			RiotControl.trigger('state_init');
		});

		RiotControl.on('state_changed',function(stateObj){
			self.activeMode = stateObj.state.mode;

			riot.route(stateObj.state.mode + "/" + stateObj.state.region + "/" + stateObj.state.search);
			self.update();
		});


	</script>
</app>

