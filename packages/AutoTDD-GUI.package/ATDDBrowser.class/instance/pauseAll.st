action
pauseAll
	
	ATDDTestingEntity testingEntities do: [:testingEntitySymbol |
		(self testingEntityCollectionDictionary at: testingEntitySymbol) do: [:testingEntity |
			self pauseTestingEntity: testingEntity
			]
		].
	
	self update