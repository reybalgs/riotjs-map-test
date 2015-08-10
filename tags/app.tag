<app name="appy">	
	<ui></ui>
	<!-- <map if="{mode == 'map'}" name="mappy" id="map"></map> -->
	<map if="{mode == 'map'}" name="mappy" id="map"></map>
	<gallery if="{mode == 'gallery'}" name="gally"><gallery/>
	<listing if="{mode == 'list'}" name="listy"><listing/>

	<script>

		window.state = {//state bundle to keep track of everything in one place
			mode: 'map',
			mww: false,
			filter: '',
			search: '',
			region: '',
		};

		window.results = [];

		this.on('update',function(){
			console.log('App updated');
			console.log(artworks);

			filter(window.state);
		});

		function filter(state){
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

			console.log("#------");
			console.log("#",state);
			console.log("#",results);
		}

		this.on('mount',function(){
			console.log('App mounted');
		});


	</script>
</app>

