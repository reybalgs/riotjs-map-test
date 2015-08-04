<gallery-item>
	<div>
		<b>{this.name}</b>
		<p>{this.desc}</p>
	</div>

	<script>
		this.on('click',function(){
			this.active = true;
			console.log("gallery item clicked");
		});
		this.on('mount',function(){
			console.log('gallery-item mounted');
		});
		this.on('unmount',function(){
			console.log('gallery-item unmounted');
		});
	</script>

</gallery-item>