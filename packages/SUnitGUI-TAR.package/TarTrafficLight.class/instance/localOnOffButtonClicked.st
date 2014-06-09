event handling
localOnOffButtonClicked

	self isTesting: self isTesting not.
	self isTesting 
		ifTrue: [
			self localOnButtonClicked.
			self onOffButton state: #on ]
		ifFalse: [
			self localOffButtonClicked.
			self onOffButton state: #off ]
	