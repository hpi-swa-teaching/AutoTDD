constants
testingEntityUIDictionary
	
	^ IdentityDictionary
		newFrom: {
			#watcher -> self watcherUIDictionary.
			#travisStatus -> self travisStatusUIDictionary.
			#gitHubAction -> self gitHubActionUIDictionary
		}