building
createState

	| state |
	state := PluggableTextMorphPlus 
		on: self
		text: #stateText
		accept: nil.
	state
		getColorSelector: #stateColor.
	self addMorph: state fullFrame: self stateFrame.
	^state