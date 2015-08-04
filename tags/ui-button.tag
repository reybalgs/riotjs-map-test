<ui-button>
	<button name="{opts.mode}-mode-button" onclick="{uiClick}" mode="{opts.mode}" class="{active : active}">{opts.label}</button>
	<script>

		this.uiClick = function(e,g){
			console.log("UI CLICKED",e,g);
			console.log("---",e);
			return;
		}

		this.on('mount update unmount', function(eventName) {
		   console.info(eventName);
		})
	</script>
	
	<style scoped>
		:scoped{
			width:50px;
			display: inline-block;
			height: 50px;
			background-color: black;
			color: white;
			cursor:pointer;
		}
		.active{
			text-decoration: underline;
		}
	</style>
	
</ui-button>