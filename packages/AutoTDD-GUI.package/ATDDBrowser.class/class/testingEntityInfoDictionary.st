constants
testingEntityInfoDictionary
	
	^ IdentityDictionary
		newFrom: {
			#watcher -> ATDDWatcherInfo.
			#travisStatus -> ATDDTravisStatusInfo.
			#gitHubAction -> ATDDGitHubActionInfo
		}