event handling
foregroundButtonClicked
	
	self inForeground: self inForeground not.
	self inForeground
		ifTrue: [
			self comeToFront.
			self foregroundButton state: #on ]
		ifFalse: [ self foregroundButton state: #off ].
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber