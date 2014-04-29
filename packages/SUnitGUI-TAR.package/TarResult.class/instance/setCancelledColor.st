coloring
setCancelledColor
	(self testResultFailures notEmpty) ifFalse: [
		self cancelled 
			ifTrue: [
				self color: Color gray ] 
			ifFalse: [
				self color: Color green.
				self trafficLight setGreenLight ]
	]