coloring
setCancelledColor
	(self testResultFailures notEmpty) ifFalse: [
		self cancelled 
			ifTrue: [
				self color: self class gray ] 
			ifFalse: [
				self setPassColor ]
	]