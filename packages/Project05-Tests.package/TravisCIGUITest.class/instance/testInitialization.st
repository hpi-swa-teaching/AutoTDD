tests
testInitialization

	| gui |
	gui := TravisCIGUI new.
	self 
		assert: gui client notNil;
		assert: gui backgroundColor equals: Color gray.
	gui delete