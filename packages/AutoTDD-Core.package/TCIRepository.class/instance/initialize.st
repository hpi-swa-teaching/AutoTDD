initialize-release
initialize

	super initialize.
	self parser: TCIParser new.
	self initializeTimer