tests
testSingleton
	
	| amountOfInstances |
	
	amountOfInstances := ATDDNullTestRunner allInstances size.
	
	self assert: amountOfInstances <= 1.
	amountOfInstances = 0
		ifTrue: [ self assert: ATDDNullTestRunner new = ATDDNullTestRunner instance ]
		ifFalse: [ self should: [ ATDDNullTestRunner new ] raise: Error ].
		
	self assert: amountOfInstances = 1