tests
testInitialization
	
	| client |
	
	client := ATDDTravisClient new.
	self
		assert: client webClient notNil;
		assert: client webClient userAgent equals: client userAgent