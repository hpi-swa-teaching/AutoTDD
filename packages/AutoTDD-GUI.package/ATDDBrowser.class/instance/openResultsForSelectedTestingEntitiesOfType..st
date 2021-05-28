action
openResultsForSelectedTestingEntitiesOfType: aTestingEntitySymbol
	
	^ (self testingEntitySelectedCollectionDictionary at: aTestingEntitySymbol) collect: [ :testingEntity | 
		self openResultsForTestingEntity: testingEntity 
		]