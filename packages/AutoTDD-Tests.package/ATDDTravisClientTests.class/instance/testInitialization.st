tests
testInitialization
	
	| client |
	
	client := ATDDTravisClient new.
	self
		assert: client notNil;
		assert: client userAgent equals: client userAgent