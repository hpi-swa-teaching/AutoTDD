as yet unclassified
createButton

	| button |
	button := PluggableButtonMorph
		on: self
		getState: #isOn
		action: #updateData
		label: #buttonLabel.
	self addMorph: button fullFrame: self buttonFrame.
	^ button