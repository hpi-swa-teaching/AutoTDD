behaviour
handleStatusChange
	
	| newStatus |
	
	newStatus := self repository buildStatus.
	(self status ~= newStatus
			and: [
				newStatus = #failed
					or: [ newStatus = #errored ]
					or: [ newStatus = #canceled ]
					or: [ newStatus = #passed ] ])
		ifTrue: [ ATDDSoundPlayer instance playSoundForStatus: newStatus ]