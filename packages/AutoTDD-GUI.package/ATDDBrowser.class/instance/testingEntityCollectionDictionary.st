constants
testingEntityCollectionDictionary
	
	^ Dictionary
		newFrom: {
			#watcher -> self watchers.
			#travisStatus -> self travisStatuses.
			#gitHubAction -> self gitHubActions
		}