<map id="map">

<script>
	this.on('mount',function(){
		console.log("map mounted");
		initializeMap();
	})

	 this.on('mount update unmount', function(eventName) {
	    console.info(eventName);
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