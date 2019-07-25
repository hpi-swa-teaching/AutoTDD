initialization
initialize
	
	super initialize.
	self color: self class backgroundColor.
	self
		cornerStyle: #rounded;
		addDropShadow.
	self createModules