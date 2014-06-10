tests
testInitialization

	| gui |
	gui := TravisCIGUI new.
	self
		assert: gui parser notNil;
		assert: gui selectedBuild equals: 1;
		assert: gui selectedJob equals: 1