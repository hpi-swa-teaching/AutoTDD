constants
watcherFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add watcher' -> #createWatcher.
			'Pause' -> #pauseWatchers.
			'Resume' -> #resumeSelectedWatchers.
			'Run' -> #resumeSelectedWatchers.
      		'Edit' -> #editWatchers.
			'Info' -> #infoWatchers.
			'Results' -> #resultsWatchers.
			'Remove' -> #removeSelectedWatchers.
		}