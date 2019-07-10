accessing
updateStatus
	self flag: #todo.
	"Dont call changed here, solve it as solved for watchers using value
	holders"
	(self buildStatus ~= self repository buildStatus
			and: [self buildStatus = #failed
					or: [self buildStatus = #errored]
					or: [self buildStatus = #canceled]
					or: [self buildStatus = #passed]])
		ifTrue: [ATDDSoundPlayer instance playSoundForStatus: self buildStatus].
	self pausedStatus: self pausedString;
		 status: self repository status;
		 notify.
	ATDDBrowser changed: #travisStatuses