constants
watcherFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add watcher' -> #createWatcher.
			'Pause' -> #pauseWatchers.
			'Resume' -> #resumeSelectedWatchers.
			'Run' -> #runSelectedWatchers.
      		'Edit' -> #editWatchers.
			'Info' -> #infoWatchers.
			'Results' -> #resultsWatchers.
			'Remove' -> #removeSelectedWatchers
		}