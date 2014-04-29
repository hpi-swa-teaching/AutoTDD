coloring
determineText
	(self testResultFailures notEmpty)
		ifTrue: [ self determineTextForFailures ].
	(self testResultErrors notEmpty) 
		ifTrue: [ self determineTextForErrors ]