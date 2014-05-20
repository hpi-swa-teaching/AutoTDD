accessing
foregroundButtonClicked
	self inForeground
		ifTrue: [ "self foregroundButton label: 'pin'." 
				self foregroundButton state: #off. ]
		ifFalse: [ "self foregroundButton label: 'inForeground'."
			self comeToFront.
			self foregroundButton state: #on. ].
	self inForeground: self inForeground not.
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.