initialize-release
initialize
	self flag: #todo. "create abstract tcirepo class"
	super initialize.
	self parser: TCIParser new.
	self initializeTimer