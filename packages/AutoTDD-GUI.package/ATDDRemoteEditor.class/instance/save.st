action
save
	
	repositoryUrl changed: #acceptChanges.
	token changed: #acceptChanges.
	refreshInterval changed: #acceptChanges.
	self hasVaildRefreshInterval
		ifFalse: [
			UIManager default inform: 'Please enter a valid interval!'.
			^ nil ].
	self hasVaildSlug
		ifFalse: [
			UIManager default inform: 'Please enter a valid slug!'.
			^ nil ].
	super save.
	self closeWindow.
	
	^ self applyChanges