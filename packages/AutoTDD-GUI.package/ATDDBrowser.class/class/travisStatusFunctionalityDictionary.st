constants
travisStatusFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add Travis Status' -> #createTravisStatus.
			'Pause' -> #pauseTravisStatuses.
			'Resume' -> #resumeSelectedTravisStatuses.
			'Run' -> #resumeSelectedTravisStatuses.
      		'Edit' -> #editTravisStatuses.
			'Results' -> #resultsTravisStatuses.
			'Remove' -> #removeSelectedTravisStatuses
		}