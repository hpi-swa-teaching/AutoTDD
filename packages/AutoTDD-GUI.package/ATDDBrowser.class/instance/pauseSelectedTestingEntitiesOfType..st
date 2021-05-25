action
pauseSelectedTestingEntitiesOfType: aTestingEntitySymbol
	
	(self testingEntitySelectedCollectionDictionary at: aTestingEntitySymbol) do: [ :testingEntity | 
		testingEntity pause
		].
	self changed: aTestingEntitySymbol