building
createSelectedState

	| state |
	state := PluggableTextMorphPlus 
		on: self
		text: #selectedStateText
		accept: nil.
	state
		getColorSelector: #selectedStateColor.
	self window addMorph: state fullFrame: self selectedStateFrame.
	^ state