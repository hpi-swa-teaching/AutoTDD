initialize-release
initialize

	super initialize.
	self client: TravisCIClient new.
	self initializeTimer