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
		
	[ self makesValidRequest ]
		on: ATDDConnectionError
		do: [ UIManager default inform: ATDDConnectionError defaultMessage.
			^ nil ]
		on: ATDDAccessDeniedError
		do: [ UIManager default inform: ATDDRateLimitError defaultMessage.
			^ nil ]
		on: ATDDNotFoundError
		do: [ UIManager default inform: ATDDNotFoundError defaultMessage.
			^ nil ].
		
	super save.
	self closeWindow.
	^ self applyChanges