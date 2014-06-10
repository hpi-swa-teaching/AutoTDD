as yet unclassified
determineColorOf: aTestResult

	^ aTestResult ifNotNil: [
		aTestResult hasErrors
			ifTrue: [ Color red ]
			ifFalse: [ aTestResult hasFailures
				ifTrue: [ Color yellow ]
				ifFalse: [ aTestResult hasPassed
					ifTrue: [ Color green ]
					ifFalse: [ Color gray ] ] ] ]
		ifNil: [ Color gray ]