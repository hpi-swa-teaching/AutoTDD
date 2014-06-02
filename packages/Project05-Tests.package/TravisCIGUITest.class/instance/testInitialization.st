tests
testInitialization

	| gui |
	gui := TravisCIGUI new.
	self
		assert: gui client notNil;
		assert: gui parser notNil;
		assert: gui cache notNil;
		assert: gui cache isDictionary;
		assert: gui buildsDictionary notNil;
		assert: gui buildsDictionary isDictionary;
		assert: gui selectedBuild equals: 0;
		assert: gui selectedJob equals: 0