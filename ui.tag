<ui>
	<button class="{active : active}">Map</button>
	<button class="{active : active}">Gallery</button>
	<button class="{active : active}">List</button>
	
	<button onclick="{drawPoints}">Draw Points</button>

	<script>
		this.on('click',function(e){
			console.log("something clicked");
		});

		this.on('mount',function(e){
			console.log("ui mounted");
		});

		this.on('unmount',function(e){
			console.log("ui unmounted");
		});

		this.on('update',function(e){
			console.log("ui updated");
		});
	</script>
	
	<style scoped>
		:scoped{
			background-color: gray;
			width:100%;
			display:block;
		}
		button{
			width:50px;
			display: inline-block;
			height: 50px;
			background-color: black;
			color: white;
			cursor:pointer;
		}
		button.active{
			text-decoration: underline;
		}
	</style>
	
</ui>