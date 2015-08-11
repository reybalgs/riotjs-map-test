<gallery>
	<gallery-item each="{results}"></gallery-item>

	<script>
	var self = this;

	RiotControl.on('state_changed',function(stateObj){
		self.results = stateObj.results;
		self.update();
	});
	</script>
</gallery>