event handling
applySlug
	
	self travisSource: self urlField contents.
	self useTravis
		ifTrue: [ self data: (TravisCIRepository newForRepository: self travisSource asString) ]