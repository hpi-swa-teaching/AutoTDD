building
createButton

	| button |
	button := PluggableButtonMorph
		on: self
		getState: #isOn
		action: #update
		label: #buttonLabel.
	self addMorph: button fullFrame: self buttonFrame.
	^ button