constants
testingEntityDictionary

	^ IdentityDictionary
		newFrom: {
			#watcher -> ATDDWatcherResults.
			#travisStatus -> ATDDTravisStatusResults.
			#gitHubAction -> ATDDGitHubActionResults
		}