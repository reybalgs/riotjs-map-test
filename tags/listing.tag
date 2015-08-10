<listing>
	<ul>
		<p each="{window.results}"><b>{this.name}:</b><span>{this.desc}</span></p>
	</ul>

	<script>
	this.on('mount',function(){
		console.log("listing mounted");
	});

	this.on('update',function(){
		console.log('listing updated');

	});
	</script>
</listing>