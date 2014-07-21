building
createSelectedState

	| state |
	state := (PluggableTextMorphPlus 
		on: self
		text: #selectedStateText
		accept: nil)
		getColorSelector: #selectedStateColor;
		yourself.
	self window addMorph: state fullFrame: self selectedStateFrame