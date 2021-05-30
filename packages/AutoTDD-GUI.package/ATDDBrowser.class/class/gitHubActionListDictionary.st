constants
gitHubActionListDictionary
	
	^ Dictionary
		newFrom: {
			'list' -> #gitHubActions.
			'getIndex' -> #selectedGitHubAction.
			'setIndex' -> #selectedGitHubAction:.
			'getSelectionList' -> #gitHubActionAt:.
			'setSelectionList' -> #gitHubActionAt:put:
		}