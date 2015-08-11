<gallery>
	<gallery-item each="{results}"></gallery-item>

	<script>
	var self = this;


	RiotControl.on('state_changed',function(stateObj){
		self.results = stateObj.results;
		self.update();
	});

	self.on('mount',function(){
		console.log("gallery mounted");
	});

	self.on('update',function(){
		console.log('gallery updated');
	});
	</script>
</gallery>