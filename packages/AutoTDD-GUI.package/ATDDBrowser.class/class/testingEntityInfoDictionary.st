constants
testingEntityInfoDictionary
	
	^ Dictionary
		newFrom: {
			#watcher -> ATDDWatcherInfo.
			#travisStatus -> ATDDTravisStatusInfo.
			#gitHubAction -> ATDDGitHubActionInfo
		}