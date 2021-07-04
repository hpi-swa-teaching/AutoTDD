tests
testSingleton
	
	| amountOfInstances |
	
	amountOfInstances := ATDDSoundPlayer allInstances size.
	
	self assert: amountOfInstances <= 1.
	amountOfInstances = 0
		ifTrue: [ self assert: ATDDSoundPlayer new = ATDDSoundPlayer instance ]
		ifFalse: [ self should: [ ATDDSoundPlayer new ] raise: Error ].
		
	self assert: amountOfInstances = 1