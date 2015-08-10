<ui-button>
	<button name="{opts.mode}-mode-button" onclick="{modeSet}" mode="{opts.mode}" class="{active : mode == opts.mode}">{opts.label}</button>
	
	<script>
		this.modeSet = function(e) {
			mode = this.opts.mode;
			window.state.mode = this.opts.mode;
			document.querySelector("app")._tag.update();
		}
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