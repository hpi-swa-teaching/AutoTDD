event handling
onOffButtonClicked

	self use: self use not.
	self onOffButton state: (self use
		ifTrue: [ #on ]
		ifFalse: [ #off ])