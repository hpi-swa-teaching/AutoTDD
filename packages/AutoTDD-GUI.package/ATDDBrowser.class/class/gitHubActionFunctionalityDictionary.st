constants
gitHubActionFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add GitHub Action' -> #addGitHubAction.
			'Pause' -> #pauseSelectedGitHubActions.
			'Resume' -> #resumeSelectedGitHubActions.
			'Run' -> #resumeSelectedGitHubActions.
      		'Edit' -> #editGitHubAction.
			'Info' -> #openInfoForSelectedGitHubActions.
			'Results' -> #openResultsForSelectedGitHubActions.
			'Remove' -> #removeSelectedGitHubActions.
		}