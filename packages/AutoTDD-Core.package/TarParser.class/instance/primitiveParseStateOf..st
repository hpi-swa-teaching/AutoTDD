as yet unclassified
primitiveParseStateOf: aTestResult

	^ aTestResult runCount isZero
		ifTrue: [ #unknown ]
		ifFalse: [ aTestResult hasErrors
			ifTrue: [ #errored ]
			ifFalse: [ aTestResult hasFailures
				ifTrue: [ #failed ]
				ifFalse: [ #passed ] ] ]