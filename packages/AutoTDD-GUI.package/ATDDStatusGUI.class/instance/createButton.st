building
createButton

	| button |
	button := PluggableButtonMorph
		on: self
		getState: #isOn
		action: #updateData
		label: #buttonLabel.
	self window addMorph: button fullFrame: self buttonFrame.
	^ button