event handling
travisProOnOffButtonClicked
	
	self useTravisPro: self useTravisPro not.
	self travisProOnOffButton state: (self useTravisPro
		ifTrue: [ #on ]
		ifFalse: [ #off ])