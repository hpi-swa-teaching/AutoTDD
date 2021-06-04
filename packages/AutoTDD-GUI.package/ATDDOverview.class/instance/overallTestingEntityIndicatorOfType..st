action
overallTestingEntityIndicatorOfType: aSymbol
	
	ATDDTestingEntity statuses do: [:aStatusSymbol |
		(self allTestingEntitiesOfType: aSymbol withStatus: aStatusSymbol) 
			ifNotEmpty: [ ^ self class imageDictionary at: aStatusSymbol ]
		].
	
	^ self class imageDictionary at: ATDDTestingEntity neutralStatus