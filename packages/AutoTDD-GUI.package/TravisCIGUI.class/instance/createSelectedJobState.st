building
createSelectedJobState

	| state |
	state := PluggableTextMorphPlus 
		on: self
		text: #selectedJobStateText
		accept: nil.
	state
		getColorSelector: #selectedJobStateColor.
	self window addMorph: state fullFrame: self selectedJobStateFrame.
	^ state