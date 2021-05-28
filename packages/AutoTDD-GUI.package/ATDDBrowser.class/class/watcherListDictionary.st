constants
watcherListDictionary
	
	^ Dictionary
		newFrom: {
			'data' -> #watchers.
			'getIndex' -> #selectedWatcher.
			'setIndex' -> #selectedWatcher:.
			'getSelectionList' -> #watcherAt:.
			'setSelectionList' -> #watcherAt:put:
		}