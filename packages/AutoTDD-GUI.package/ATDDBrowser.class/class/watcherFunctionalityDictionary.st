constants
watcherFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add watcher' -> #addWatcher.
			'Pause' -> #pauseSelectedWatchers.
			'Resume' -> #resumeSelectedWatchers.
			'Run' -> #resumeSelectedWatchers.
      		'Edit' -> #editWatcher.
			'Info' -> #openInfoForSelectedWatchers.
			'Results' -> #openResultsForSelectedWatchers.
			'Remove' -> #removeSelectedWatchers.
		}