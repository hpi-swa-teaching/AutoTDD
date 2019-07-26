primitive-parsing
primitiveParseStateOf: aTestCase within: aTestResult
	
	(aTestResult isPassed: aTestCase) ifTrue: [ ^ #passed ].
	
	^ (aTestResult isFailure: aTestCase) ifTrue: [ #failed ] ifFalse: [ #errored ]