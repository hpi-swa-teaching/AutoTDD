tests
testInitialization

	| gui |
	gui := TravisCIGUI new.
	self
		assert: gui client notNil;
		assert: gui parser notNil;
		assert: gui jsons notNil;
		assert: gui selectedBuild equals: 1;
		assert: gui selectedJob equals: 0