building
createState

	| state |
	state := (PluggableTextMorphPlus 
		on: self
		text: #stateText
		accept: nil)
		getColorSelector: #stateColor;
		yourself.
	self window addMorph: state fullFrame: self stateFrame