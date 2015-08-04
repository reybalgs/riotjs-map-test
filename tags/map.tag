<map id="map">

<script>
	this.on('mount',function(){
		initializeMap();
		drawPoints();
	})
</script>

<style scoped>
	:scope{
		display:block;
		width: 100vw;
		height: 50vh;
		margin: 20px 0;
	}
</style>
</map>