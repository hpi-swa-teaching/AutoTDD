coloring
determineColor
	(self testResultFailures notEmpty)
		ifTrue: [ self setFailureColor ].
	(self testResultErrors notEmpty) 
		ifTrue: [ self setErrorColor ]
		ifFalse: [ self setCancelledColor ]