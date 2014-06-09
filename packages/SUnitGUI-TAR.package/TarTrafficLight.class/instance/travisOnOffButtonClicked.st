event handling
travisOnOffButtonClicked
	
	self useTravis: self useTravis not.
	self travisOnOffButton state: (self useTravis
		ifTrue: [ #on ]
		ifFalse: [ #off ])