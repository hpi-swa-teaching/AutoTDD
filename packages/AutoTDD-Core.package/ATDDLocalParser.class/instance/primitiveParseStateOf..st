primitive-parsing
primitiveParseStateOf: aTestResult
	
	aTestResult runCount isZero ifTrue: [ ^ #unknown ].
	aTestResult hasErrors ifTrue: [ ^ #errored ].
	
	^ aTestResult hasFailures ifTrue: [ #failed ] ifFalse: [ #passed ]