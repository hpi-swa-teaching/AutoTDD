calculation
allTestingEntitiesOfType: aTestingEntitySymbol withStatus: aStatusSymbol
	
	^ (self testingEntityCollectionDictionary at: aTestingEntitySymbol) select: [ :each | each status = aStatusSymbol ]