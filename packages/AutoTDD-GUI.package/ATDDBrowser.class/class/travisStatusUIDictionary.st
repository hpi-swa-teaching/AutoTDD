constants
travisStatusUIDictionary
	
	^ Dictionary
		newFrom: {
			'listDictionary' -> self travisStatusListDictionary.
			'functionalityDictionary' -> self travisStatusFunctionalityDictionary.
		}