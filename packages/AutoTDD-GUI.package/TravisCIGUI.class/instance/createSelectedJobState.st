building
createSelectedJobState

	| state |
	state := PluggableTextMorphPlus 
		on: self
		text: #selectedJobStateText
		accept: nil.
	state
		getColorSelector: #selectedJobStateColor.
	self addMorph: state fullFrame: self selectedJobStateFrame.
	^ state