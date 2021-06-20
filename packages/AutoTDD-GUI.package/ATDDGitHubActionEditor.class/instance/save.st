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
	self hasValidUrl
		ifFalse: [
			UIManager default inform: 'Error 404! Please provide a valid {owner}/{repo}'.
			^ nil ].
	super save.
	self closeWindow.

	^ self applyChanges