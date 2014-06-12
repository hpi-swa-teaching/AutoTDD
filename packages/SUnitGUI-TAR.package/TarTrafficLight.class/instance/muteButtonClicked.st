event handling
muteButtonClicked

	self isMuted: self isMuted not.
	self isMuted
		ifTrue: [	self muteButton state: #on. ]
		ifFalse: [ self muteButton state: #off. ]