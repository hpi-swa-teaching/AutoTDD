constants
gitHubActionFunctionalityDictionary
	
	^ OrderedDictionary
		newFrom: {
			'Add GitHub Action' -> #createGitHubAction.
			'Pause' -> #pauseGitHubActions.
			'Resume' -> #resumeSelectedGitHubActions.
			'Run' -> #resumeSelectedGitHubActions.
      		'Edit' -> #editGitHubActions.
			'Info' -> #infoGitHubActions.
			'Results' -> #resultsGitHubActions.
			'Remove' -> #removeSelectedGitHubActions
		}