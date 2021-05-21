behaviour
handleStatusChange
	
	| newStatus |
	
	newStatus := self repository buildStatus.
	(self status ~= newStatus
			and: [
				newStatus = #failure
					or: [ newStatus = #cancelled ]
					or: [ newStatus = #success ] ])
		ifTrue: [ ATDDSoundPlayer instance playSoundForStatus: newStatus ]