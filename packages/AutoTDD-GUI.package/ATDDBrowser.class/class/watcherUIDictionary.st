constants
watcherUIDictionary
	
	^ Dictionary
		newFrom: {
			'listDictionary' -> self watcherListDictionary.
			'functionalityDictionary' -> self watcherFunctionalityDictionary.
		}