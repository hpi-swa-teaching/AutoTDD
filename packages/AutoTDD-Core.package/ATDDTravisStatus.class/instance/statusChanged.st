behaviour
statusChanged
	
	| newStatus |
	
	newStatus := self repository buildStatus.
	(self internalStatus ~= newStatus
			and: (#(#failed #errored #canceled #passed) includes: newStatus))
		ifTrue: [ ATDDSoundPlayer instance playSoundForStatus: newStatus ]