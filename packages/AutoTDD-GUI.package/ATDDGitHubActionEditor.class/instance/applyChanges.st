action
applyChanges
	
	super applyChanges.
	
	[ self gitHubAction resume ]
		on: ATDDAccessDeniedError
		do: [ self gitHubAction pause ]