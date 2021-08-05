constants
testingEntityEditorDictionary
	
	^ Dictionary newFrom: {
		#watcher -> ATDDWatcherEditor.
		#travisStatus -> ATDDTravisStatusEditor.
		#gitHubAction -> ATDDGitHubActionEditor }