tests
testInitialization

	self
		assert: sut parser notNil;
		assert: sut selectedResult equals: 1;
		assert: sut selectedTest equals: 0