constants
gitHubActionUIDictionary
	
	^ Dictionary
		newFrom: {
			'listDictionary' -> self gitHubActionListDictionary.
			'functionalityDictionary' -> self gitHubActionFunctionalityDictionary
		}