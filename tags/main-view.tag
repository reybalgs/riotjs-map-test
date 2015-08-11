<main-view>	
	<map if="{opts.mode == 'map'}" id="map"></map><!--Won't work if you check against window.state.mode-->
	<gallery if="{opts.mode == 'gallery'}"></gallery>
	<listing if="{opts.mode == 'list'}"></listing>
</main-view>

