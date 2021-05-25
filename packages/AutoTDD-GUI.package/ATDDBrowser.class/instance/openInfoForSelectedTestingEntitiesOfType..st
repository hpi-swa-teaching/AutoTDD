action
openInfoForSelectedTestingEntitiesOfType: aTestingEntitySymbol
	
	^ (self testingEntitySelectedCollectionDictionary at: aTestingEntitySymbol) collect: [ :testingEntity |
		self openInfoForTestingEntity: testingEntity 
		]