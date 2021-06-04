constants
testingEntityResultsDictionary
	
	^ IdentityDictionary
		newFrom: {
			#watcher -> ATDDWatcherResults.
			#travisStatus -> ATDDTravisStatusResults.
			#gitHubAction -> ATDDGitHubActionResults
		}