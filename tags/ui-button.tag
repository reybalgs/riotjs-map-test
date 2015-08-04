<ui-button>
	<button name="{opts.mode}-mode-button" onclick="{uiClick}" mode="{opts.mode}" class="{active : active}">{opts.label}</button>
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