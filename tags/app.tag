<app name="appy">	
	<ui></ui>
	<button onclick="{updateApp}">clear</button>


	<!-- <map if="{mode == 'map'}" name="mappy" id="map"></map> -->
	<map name="mappy" id="map"></map>
	<gallery if="{mode == 'gallery'}" name="gally"><gallery/>
	<list if="{mode == 'list'}" name="listy"><list/>

	<script>
		var mode = 'map';
		appUpdate = function(){
			this.update();
		}
	</script>
</app>

