event handling
muteButtonClicked
	
	self soundPlayer isMuted: self soundPlayer isMuted not.
	self soundPlayer isMuted
		ifTrue: [ self muteButton state: #on ]
		ifFalse: [ self muteButton state: #off ]