<ui>
	<ui-button onclick="{modeSet}" mode="map" label="Map"></ui-button>
	<ui-button onclick="{modeSet}" mode="gallery" label="Gallery"></ui-button>
	<ui-button onclick="{modeSet}" mode="list" label="List"></ui-button>

	<select onchange="{filterPoints}" name="regionSelect">
		<option each="{regions}" value="{this.id}">{this.display}</option>
	</select>

	<style scoped>
		:scoped{
			background-color: gray;
			width:100%;
			display:block;
		}
	</style>
</ui>