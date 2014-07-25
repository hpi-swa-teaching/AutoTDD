tests
testInitialization

	| client |
	client := TCIClient new.
	self 
		assert: client webClient notNil;
		assert: client webClient userAgent equals: client userAgent