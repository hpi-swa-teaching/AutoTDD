tests
testSingleton
	
	| amountOfInstances |
	
	amountOfInstances := ATDDProfile allInstances size.
	
	self assert: amountOfInstances <= 1.
	amountOfInstances = 0
		ifTrue: [ self assert: ATDDProfile new = ATDDProfile instance ]
		ifFalse: [ self should: [ ATDDProfile new ] raise: Error ].
		
	self assert: amountOfInstances = 1