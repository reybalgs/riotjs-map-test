<ui-button>
	<button name="{opts.mode}-mode-button" onclick="{modeSet}" mode="{opts.mode}" class="{active : active == opts.mode}">{opts.label}</button>
	
	<script>
		var self = this;

		self.modeSet = function(e) {
			RiotControl.trigger('modeSet', this.opts.mode);
		}

		RiotControl.on('state_changed',function(stateObj){
			self.active = stateObj.state.mode;
			self.update();
		});

	</script>

	<style scoped>
		button{
			width:100px;
			display: inline-block;
			border: none;
			height: 60px;
			background-color: #c4c4c4;
			color: white;
			cursor:pointer;
			margin-left: -4px;
			border-right: 1px solid black;
		}
		.active{
			background-color: #8A8989;
		}
	</style>
	
</ui-button>