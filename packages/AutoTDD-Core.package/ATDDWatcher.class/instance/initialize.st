initialization
initialize
	self
		applyDefaultConfiguration;
		addChangeListener.
		
	self localTestRunner: (ATDDLocalTestRunner newForWatcher: self).