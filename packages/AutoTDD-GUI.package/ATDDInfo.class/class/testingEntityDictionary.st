instance creation
testingEntityDictionary

	^ IdentityDictionary
		newFrom: {
			#watcher -> ATDDWatcherInfo.
			#travisStatus -> ATDDTravisStatusInfo.
			#gitHubAction -> ATDDGitHubActionInfo
		}