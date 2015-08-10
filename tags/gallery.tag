<gallery>
	<gallery-item each="{window.results}"></gallery-item>

	<script>
	this.on('mount',function(){
		console.log("gallery mounted");
	});

	this.on('update',function(){
		console.log('gallery updated');

	});
	</script>

</gallery>