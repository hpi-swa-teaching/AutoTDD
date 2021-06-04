action
openEditorForNewTestingEntityOfType: aTestingEntitySymbol
	
	^ (self class testingEntityEditorDictionary at: aTestingEntitySymbol) 
		openForNewToAddTargetTo: (self testingEntityCollectionDictionary at: aTestingEntitySymbol)