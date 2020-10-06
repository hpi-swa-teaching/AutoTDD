initialization
initialize
	
	super initialize.
	self
		addChangeListener;
		localTestRunner: (ATDDLocalTestRunner newForWatcher: self)