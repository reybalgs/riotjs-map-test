<ui>
	<ui-button onclick="{modeSet}" mode="map" label="Map"></ui-button>
	<ui-button onclick="{modeSet}" mode="gallery" label="Gallery"></ui-button>
	<ui-button onclick="{modeSet}" mode="list" label="List"></ui-button>

	<select onchange="{regionSet}" name="regionUI">
		<option each="{regions}" value="{this.id}">{this.display}</option>
	</select>
	<input type="text" name="searchUI" placeholder='Search Things' onkeyup="{searchSet}"> 
 	<input type="checkbox" name="mwwUI" value="mww" onchange='{mwwSet}'>MWW<br>


	<script>
		this.mwwSet = function(){
			window.state.mww = this.mwwUI.checked;
			console.log(window.state.mww);
			document.querySelector("app")._tag.update();
		}

		this.regionSet = function(){
			window.state.region = this.regionUI.value;
			console.log(window.state.region);
			document.querySelector("app")._tag.update();
		}

		this.searchSet = function(e) {
			search = this.searchUI.value;
			window.state.search = this.searchUI.value;
			document.querySelector("app")._tag.update();
		}
	</script>
	<style scoped>
		:scoped{
			background-color: gray;
			width:100%;
			display:block;
		}
	</style>
</ui>