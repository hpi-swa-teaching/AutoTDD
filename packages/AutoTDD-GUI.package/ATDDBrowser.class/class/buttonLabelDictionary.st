accessing
buttonLabelDictionary

	^ Dictionary
		newFrom: {
			'pauseAll' -> 'Pause All'.
			'resumeAll' -> 'Resume All'.
			'runAll' -> 'Run All'.
			'openOverview' -> 'Open Overview'.
			'toggleSounds' -> 'Toggle Sounds'.
		
			'createWatcher' -> 'Create Watcher'.
			'pauseWatchers' -> 'Pause Watchers'.
			'resumeSelectedWatchers' -> 'Resume Selected Watchers'.
			'runSelectedWatchers' -> 'Run Selected Watchers'.
			'editWatchers' -> 'Edit Watchers'.
			'infoWatchers' -> 'Watcher Info'.
			'resultsWatchers' -> 'Watcher Results'.
			'removeSelectedWatchers' -> 'Remove Selected Watchers'.
			
			'createTravisStatus' -> 'Create Travis Status'.
			'pauseTravisStatuses' -> 'Pause Travis Statuses'.
			'resumeSelectedTravisStatuses' -> 'Resume Selected Travis Statuses'.
			'editTravisStatuses' -> 'Edit Travis Statuses'.
			'resultsTravisStatuses' -> 'Travis Statuses Info'.
			'removeSelectedTravisStatuses' -> 'Remove Selected Travis Statuses'.
			
			'createGitHubAction' -> 'Create GitHub Action'.
			'pauseGitHubActions' -> 'Pause GitHub Actions'.
			'resumeSelectedGitHubActions' -> 'Resume Selected GitHub Actions'.
			'editGitHubActions' -> 'Edit GitHub Actions'.
			'resultsGitHubActions' -> 'GitHub Actions Info'.
			'removeSelectedGitHubActions' -> 'Remove Selected GitHub Actions'
		}