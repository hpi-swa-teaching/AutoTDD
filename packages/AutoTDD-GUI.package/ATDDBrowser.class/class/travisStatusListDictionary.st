constants
travisStatusListDictionary
	
	^ Dictionary
		newFrom: {
			'data' -> #travisStatuses.
			'getIndex' -> #selectedTravisStatus.
			'setIndex' -> #selectedTravisStatus:.
			'getSelectionList' -> #travisStatusAt:.
			'setSelectionList' -> #travisStatusAt:put:
		}