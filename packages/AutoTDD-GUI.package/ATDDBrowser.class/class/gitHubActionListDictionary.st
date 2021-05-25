constants
gitHubActionListDictionary
	
	^ Dictionary
		newFrom: {
			'data' -> #gitHubActions.
			'getIndex' -> #selectedGitHubAction.
			'setIndex' -> #selectedGitHubAction:.
			'getSelectionList' -> #gitHubActionAt:.
			'setSelectionList' -> #gitHubActionAt:put:.
		}