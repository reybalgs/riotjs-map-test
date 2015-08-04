<ui>
	<ui-button mode="map" label="Map"></ui-button>
	<ui-button mode="gallery" label="Gallery"></ui-button>
	<ui-button mode="list" label="List"></ui-button>
	
	<button onclick="{drawPoints}">Draw Points</button>
	<button onclick="{filterPoints}">Filter Points</button>

	<input placeholder="username" name="username">
    <input placeholder="password" name="password">

	<script>
		this.on('mount update unmount', function(eventName) {
			console.info(eventName);
		})
	</script>
	
	<style scoped>
		:scoped{
			background-color: gray;
			width:100%;
			display:block;
		}
	</style>
	
</ui>