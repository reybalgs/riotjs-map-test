<listing>
	<ol>
		<li each="{results}"><b>{name}:</b><span>{desc}</span></li>
	</ol>

	<script>
	var self = this;

	RiotControl.on('state_changed',function(stateObj){
		self.results = stateObj.results;
		self.update();
	});
	</script>
</listing>