action
save
	
	travisToken changed: #acceptChanges.
	gitHubToken changed: #acceptChanges.
	self closeWindow.
	
	^ self applyChanges