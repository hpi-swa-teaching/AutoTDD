primitive-parsing
primitiveParseStateOf: aTestCase within: aTestResult
	
	(aTestResult isPassed: aTestCase) ifTrue: [ ^ #successful ].
	
	^ (aTestResult isFailure: aTestCase) ifTrue: [ #failure ] ifFalse: [ #error ]