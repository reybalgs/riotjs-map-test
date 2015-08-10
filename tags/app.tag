<app name="appy">	
	<ui></ui>
	<!-- <map if="{mode == 'map'}" name="mappy" id="map"></map> -->
	<map if="{mode == 'map'}" name="mappy" id="map"></map><!--Won't work if you check against window.state.mode-->
	<gallery if="{mode == 'gallery'}" name="gally"><gallery/>
	<listing if="{mode == 'list'}" name="listy"><listing/>

	<script>
		window.results = [];

		function filterData(state){
			window.results = artworks.filter(function(artNode){
				if(artNode.mww == state.mww || state.mww == false){
					if(artNode.region == state.region || state.region == ''){
						if(state.search == '') return this;
						else if(artNode.name.toLowerCase().indexOf(state.search.toLowerCase()) != -1){
							return this;
						}
					}
				}
			});
		}


		this.on('update',function(){
			console.log('App updated');
			filterData(window.state);
			riot.route.exec(function(mode, filter) {
				console.log("url params",mode,filter);
				// if(mode == 'map' || mode == 'gallery' ||mode == 'list')window.state.mode = mode;
				// else window.state.mode = 'map';
			})
		});

		this.on('mount',function(){
			console.log('App mounted');
		});


	</script>
</app>

