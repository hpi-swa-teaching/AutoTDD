constants
watcherListDictionary
	
	^ Dictionary
		newFrom: {
			'list' -> #watchers.
			'getIndex' -> #selectedWatcher.
			'setIndex' -> #selectedWatcher:.
			'getSelectionList' -> #watcherAt:.
			'setSelectionList' -> #watcherAt:put:
		}