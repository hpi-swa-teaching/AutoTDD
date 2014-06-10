event handling
localOnOffButtonClicked
	
	self useLocal: self useLocal not.
	self localOnOffButton state: (self useLocal
		ifTrue: [ #on ]
		ifFalse: [ #off ])