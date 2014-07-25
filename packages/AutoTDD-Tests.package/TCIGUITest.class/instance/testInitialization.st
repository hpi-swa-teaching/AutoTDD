tests
testInitialization

	self
		assert: sut parser notNil;
		assert: sut selectedBuild equals: 1;
		assert: sut selectedJob equals: 1