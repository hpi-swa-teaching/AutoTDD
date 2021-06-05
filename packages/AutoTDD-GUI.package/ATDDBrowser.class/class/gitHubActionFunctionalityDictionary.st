constants
gitHubActionFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add GitHub Action' -> #createGitHubAction.
			'Pause' -> #pauseGitHubActions.
			'Resume' -> #resumeSelectedGitHubActions.
			'Run' -> #resumeSelectedGitHubActions.
      		'Edit' -> #editGitHubActions.
			'Results' -> #resultsGitHubActions.
			'Remove' -> #removeSelectedGitHubActions
		}