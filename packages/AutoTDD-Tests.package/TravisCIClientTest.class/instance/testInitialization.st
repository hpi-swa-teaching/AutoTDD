tests
testInitialization

	| client |
	client := TravisCIClient new.
	self 
		assert: client webClient notNil;
		assert: client webClient userAgent equals: client userAgent