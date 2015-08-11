<listing>
	<ol>
		<li each="{window.results}"><b>{name}:</b><span>{desc}</span></li>
	</ol>

	<script>
	this.on('mount',function(){
		console.log("listing mounted");
	});

	this.on('update',function(){
		console.log('listing updated');
	});
	</script>
</listing>