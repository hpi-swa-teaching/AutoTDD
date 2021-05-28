action
openResultsForTestingEntity: aTestingEntity
	
	aTestingEntity notNil ifTrue: [ ^ (self class testingEntityResultsDictionary at: (aTestingEntity class symbol)) 
		openForTarget: aTestingEntity 
		]