<gallery>
	<gallery-item each="{artworks}"></gallery-item>

	<script>
	this.on('mount',function(){
		console.log("gallery mounted");
	});
	this.on('unmount',function(){
		console.log('unmount gallery');
	});
	</script>

</gallery>