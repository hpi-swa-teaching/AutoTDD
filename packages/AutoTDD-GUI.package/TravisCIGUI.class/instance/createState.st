building
createState

	| state |
	state := PluggableTextMorphPlus 
		on: self
		text: #stateText
		accept: nil.
	state
		getColorSelector: #stateColor.
	self window addMorph: state fullFrame: self stateFrame.
	^ state