constants
testingEntityUIDictionary
	
	^ Dictionary
		newFrom: {
			'watcher' -> self watcherUIDictionary.
			'travisStatus' -> self travisStatusUIDictionary.
			'gitHubAction' -> self gitHubActionUIDictionary
		}