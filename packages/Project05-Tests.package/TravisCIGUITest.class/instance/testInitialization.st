tests
testInitialization

	| gui |
	gui := TravisCIGUI new.
	self
		assert: gui parser notNil;
		assert: gui selectedBuild equals: 0;
		assert: gui selectedJob equals: 0