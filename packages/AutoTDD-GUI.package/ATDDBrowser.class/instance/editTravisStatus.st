action
editTravisStatus
	
	self selectedTravisStatuses
		do: [ :travisStatus |
			self openEditorForTravisStatus: travisStatus ]