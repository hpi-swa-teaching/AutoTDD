building
createLog

	| log |
	log := PluggableTextMorphPlus 
		on: self
		text: #log
		accept: nil.
	self window addMorph: log fullFrame: self logFrame