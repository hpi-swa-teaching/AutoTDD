updating
changedTestingEntityOfType: aSymbol
	
	(self testingEntityCollectionDictionary at: aSymbol) removeAllSuchThat: [:each |
		each valid not
		].
	
	(self testingEntityMessageDictionary at: aSymbol) contents: 
		(self overallTestingEntityMessageOfType: aSymbol).
	
	(self testingEntityIndicatorDictionary at: aSymbol) contents:
		(self overallTestingEntityIndicatorOfType: aSymbol)