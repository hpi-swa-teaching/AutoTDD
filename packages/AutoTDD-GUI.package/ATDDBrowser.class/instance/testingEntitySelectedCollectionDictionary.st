constants
testingEntitySelectedCollectionDictionary
	
	^ Dictionary
		newFrom: {
			#watcher -> self selectedWatchers.
			#travisStatus -> self selectedTravisStatuses.
			#gitHubAction -> self selectedGitHubActions
		}