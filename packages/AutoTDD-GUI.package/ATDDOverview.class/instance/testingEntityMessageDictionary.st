building
testingEntityMessageDictionary

	^ IdentityDictionary
		newFrom: {
			#watcher -> localMessage.
			#travisStatus -> travisStatusMessage.
			#gitHubAction -> gitHubActionMessage
		}