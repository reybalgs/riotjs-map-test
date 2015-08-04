<map id="map">

	<script>
		this.on('mount',function(){
			console.log("map mounted");
			initializeMap();
		})

		this.on('unmount',function(e){
			console.log("map unmounted");
		});

		this.on('update',function(e){
			console.log("map updated");
		});
	</script>

	<style scoped>
		:scope{
			display:block;
			width: 100%;
			height: 300px;
		}
	</style>
</map>