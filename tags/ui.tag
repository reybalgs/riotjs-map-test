<ui>
	<ui-button mode="map" label="Map"></ui-button>
	<ui-button mode="gallery" label="Gallery"></ui-button>
	<ui-button mode="list" label="List"></ui-button>

	<select onchange="{regionSet}" name="regionUI">
		<option each="{regions}" value="{this.id}">{this.display}</option>
	</select>
	<input type="text" name="searchUI" placeholder='Search Things' value='{searchVal}' onchange="{searchSet}" onkeyup="{searchSet}"> 
 	<input type="checkbox" name="mwwUI" value="mww" onchange='{mwwSet}'>MWW<br>


	<script>
		var self = this;

		self.mwwSet = function(){
			RiotControl.trigger('mwwSet', this.mwwUI.checked);
		}

		self.regionSet = function(){
			RiotControl.trigger('regionSet', this.regionUI.value);
		}

		self.searchSet = function() {
			RiotControl.trigger('searchSet', this.searchUI.value);
		}

		RiotControl.on('state_changed',function(stateObj){
			self.searchVal = stateObj.state.search;
			self.update();
		});

	</script>
	<style scoped>
		:scoped{
			background-color: gray;
			width:100%;
			display:block;
		}
	</style>
</ui>