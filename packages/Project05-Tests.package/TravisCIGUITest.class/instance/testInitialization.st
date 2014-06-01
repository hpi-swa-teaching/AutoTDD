tests
testInitialization

	| gui |
	gui := TravisCIGUI new.
	self
		assert: gui client notNil;
		assert: gui parser notNil;
		assert: gui jsons notNil;
		assert: gui jsons isDictionary;
		assert: gui buildsDictionary notNil;
		assert: gui buildsDictionary isDictionary;
		assert: gui selectedBuild equals: 0;
		assert: gui selectedJob equals: 0