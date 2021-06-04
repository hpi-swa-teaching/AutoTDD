behaviour
statusChanged
	
	| newStatus |
	
	newStatus := self repository buildStatus.
	(self internalStatus ~= newStatus
			and: (#('failure' 'cancelled' 'success') includes: newStatus))
		ifTrue: [ ATDDSoundPlayer instance playSoundForStatus: newStatus ]