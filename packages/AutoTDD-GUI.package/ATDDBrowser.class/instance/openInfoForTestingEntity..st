action
openInfoForTestingEntity: aTestingEntity
	
	aTestingEntity notNil ifTrue: [ ^ (self class testingEntityInfoDictionary at: (aTestingEntity class symbol)) 
		openForTarget: aTestingEntity 
		]