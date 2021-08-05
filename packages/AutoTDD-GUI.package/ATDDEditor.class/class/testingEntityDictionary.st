constants
testingEntityDictionary

	^ IdentityDictionary newFrom: {
		#watcher -> ATDDWatcherEditor.
		#travisStatus -> ATDDTravisStatusEditor.
		#gitHubAction -> ATDDGitHubActionEditor }