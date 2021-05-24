constants
globalFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Pause All' -> #pauseAll.
			'Resume All' -> #resumeAll.
			'Run All' -> #runAll.
			'Create Overview' -> #openOverview.
      		'toggle_sound_placeholder' -> #toggleSounds.
		}