as yet unclassified
determineColorOf: aTestResult

	^ aTestResult runCount isZero
		ifTrue: [ self class gray ]
		ifFalse: [ aTestResult hasErrors
			ifTrue: [ self class red ]
			ifFalse: [ aTestResult hasFailures
				ifTrue: [ self class yellow ]
				ifFalse: [ self class green ] ] ]