calculation
overallTestingEntityMessageOfType: aSymbol
	
	ATDDTestingEntity statuses do: [:aStatusSymbol |
		(self allTestingEntitiesOfType: aSymbol withStatus: aStatusSymbol) 
			ifNotEmpty: [ ^ self class messageDictionary at: aStatusSymbol ]
		].
	
	^ self class messageDictionary at: ATDDTestingEntity neutralStatus