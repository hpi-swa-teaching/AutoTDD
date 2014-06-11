as yet unclassified
initialize

	super initialize.
	self client: TravisCIClient new.
	self initializeTimer