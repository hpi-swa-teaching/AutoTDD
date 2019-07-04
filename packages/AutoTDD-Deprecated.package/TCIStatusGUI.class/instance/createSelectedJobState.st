building
createSelectedJobState

	| state |
	state := (PluggableTextMorphPlus 
		on: self
		text: #selectedJobStateText
		accept: nil)
		getColorSelector: #selectedJobStateColor;
		yourself.
	self window addMorph: state fullFrame: self selectedJobStateFrame