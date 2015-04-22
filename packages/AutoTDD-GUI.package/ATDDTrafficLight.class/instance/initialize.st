initialization
initialize

	super initialize.
	self color: self class backgroundColor.
	self
		cornerStyle: #rounded;
		useSoftDropShadow: true;
		addDropShadow.
	self createModules