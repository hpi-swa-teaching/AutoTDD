constants
testingEntityChangedHandlingDictionary
	
	^ Dictionary
		newFrom: {
			#watcher -> ATDDWatcherEditor.
			#travisStatus -> ATDDTravisStatusEditor.
			#gitHubAction -> ATDDGitHubActionEditor
		}