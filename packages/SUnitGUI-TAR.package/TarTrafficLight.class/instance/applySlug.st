event handling
applySlug
	
	self travisSource: self slugField contents asString.
	self useTravis ifTrue: [
		self data: (TravisCIRepository newForRepository: self travisSource asString) ]