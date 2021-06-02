constants
testingEntityDictionary

	^ IdentityDictionary 
		newFrom: {
			#watcher -> ATDDWatcher.
			#travisStatus -> ATDDTravisStatus.
			#gitHubAction -> ATDDGitHubAction
		}