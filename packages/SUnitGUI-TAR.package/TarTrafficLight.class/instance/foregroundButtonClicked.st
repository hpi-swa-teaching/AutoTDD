accessing
foregroundButtonClicked
	self inForeground
		ifTrue: [ self foregroundButton label: 'pin'. ]
		ifFalse: [ self foregroundButton label: 'inForeground'.
			self comeToFront. ].
	self inForeground: self inForeground not.
	self setProperty: #morphicLayerNumber toValue: self morphicLayerNumber.