<ui>
	<ui-button mode="map" label="Map"></ui-button>
	<ui-button mode="gallery" label="Gallery"></ui-button>
	<ui-button mode="list" label="List"></ui-button>
	
	<button onclick="{drawPoints}">Draw Points</button>
	<button onclick="{filterPoints}">Filter Points</button>

	<select>
		<option each="{regions}" value="{this.id}">{this.display}</option>
	</select>

	<script>

	</script>
	
	<style scoped>
		:scoped{
			background-color: gray;
			width:100%;
			display:block;
		}
	</style>
	
</ui>