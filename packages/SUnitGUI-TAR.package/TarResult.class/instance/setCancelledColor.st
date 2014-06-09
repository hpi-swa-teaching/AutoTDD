coloring
setCancelledColor
	(self testResultFailures notEmpty) ifFalse: [
		self cancelled 
			ifTrue: [
				self color: self gray ] 
			ifFalse: [
				self color: self green.
				self trafficLight setGreenLight ]
	]