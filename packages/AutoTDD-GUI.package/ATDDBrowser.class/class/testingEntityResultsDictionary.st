constants
testingEntityResultsDictionary
	
	^ Dictionary
		newFrom: {
			#watcher -> ATDDWatcherResults.
			#travisStatus -> ATDDTravisStatusResults.
			#gitHubAction -> ATDDGitHubActionResults
		}