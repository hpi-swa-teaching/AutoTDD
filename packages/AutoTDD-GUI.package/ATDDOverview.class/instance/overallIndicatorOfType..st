calculation
overallIndicatorOfType: aTestingEntitySymbol
	
	ATDDTestingEntity statuses do: [:aStatusSymbol |
		(self allTestingEntitiesOfType: aTestingEntitySymbol withStatus: aStatusSymbol) 
			ifNotEmpty: [ ^ self imageDictionary at: aStatusSymbol ].	
		].
	
	^ self imageDictionary at: ATDDTestingEntity neutralStatus