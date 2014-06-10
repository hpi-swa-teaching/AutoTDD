as yet unclassified
determineColorOf: aTestResult

	^ aTestResult hasErrors
			ifTrue: [ Color red ]
			ifFalse: [ aTestResult hasFailures
				ifTrue: [ Color yellow ]
				ifFalse: [ aTestResult hasPassed
					ifTrue: [ Color green ]
					ifFalse: [ Color gray ] ] ]