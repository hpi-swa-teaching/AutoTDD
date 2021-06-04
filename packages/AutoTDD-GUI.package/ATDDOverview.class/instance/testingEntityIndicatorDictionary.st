building
testingEntityIndicatorDictionary

	^ IdentityDictionary
		newFrom: {
			#watcher -> localIndicator.
			#travisStatus -> travisStatusIndicator.
			#gitHubAction -> gitHubActionIndicator
		}