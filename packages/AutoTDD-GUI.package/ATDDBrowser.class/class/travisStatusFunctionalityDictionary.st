constants
travisStatusFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add Travis Status' -> #createTravisStatus.
			'Pause' -> #pauseTravisStatuses.
			'Resume' -> #resumeSelectedTravisStatuses.
			'Run' -> #resumeSelectedTravisStatuses.
      		'Edit' -> #editTravisStatuses.
			'Info' -> #infoTravisStatuses.
			'Results' -> #resultsTravisStatuses.
			'Remove' -> #removeSelectedTravisStatuses.
		}