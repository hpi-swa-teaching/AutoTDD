tests
testSingleton
	
	| amountOfInstances |
	
	amountOfInstances := ATDDNullDataSource allInstances size.
	
	self assert: amountOfInstances <= 1.
	amountOfInstances = 0
		ifTrue: [ self assert: ATDDNullDataSource new = ATDDNullDataSource instance ]
		ifFalse: [ self should: [ ATDDNullDataSource new ] raise: Error ].
		
	self assert: amountOfInstances = 1