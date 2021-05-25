constants
travisStatusFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add Travis Status' -> #addTravisStatus.
			'Pause' -> #pauseSelectedTravisStatuses.
			'Resume' -> #resumeSelectedTravisStatuses.
			'Run' -> #resumeSelectedTravisStatuses.
      		'Edit' -> #editTravisStatus.
			'Info' -> #openInfoForSelectedTravisStatuses.
			'Results' -> #openResultsForSelectedTravisStatuses.
			'Remove' -> #removeSelectedTravisStatuses.
		}