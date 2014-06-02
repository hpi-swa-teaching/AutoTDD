building
createLog

	| log |
	log := PluggableTextMorphPlus 
		on: self
		text: #log
		accept: nil.
	self addMorph: log fullFrame: self logFrame.
	^ log