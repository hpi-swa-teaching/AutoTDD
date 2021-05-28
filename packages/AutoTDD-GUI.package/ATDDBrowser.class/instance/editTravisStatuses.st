action
editTravisStatuses
	
	^ self selectedTravisStatuses do: [ :travisStatus | self openEditorForTestingEntity: travisStatus ]