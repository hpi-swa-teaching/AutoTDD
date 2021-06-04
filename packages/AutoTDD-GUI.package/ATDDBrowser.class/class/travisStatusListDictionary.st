constants
travisStatusListDictionary
	
	^ Dictionary
		newFrom: {
			'list' -> #travisStatuses.
			'getIndex' -> #selectedTravisStatus.
			'setIndex' -> #selectedTravisStatus:.
			'getSelectionList' -> #travisStatusAt:.
			'setSelectionList' -> #travisStatusAt:put:
		}