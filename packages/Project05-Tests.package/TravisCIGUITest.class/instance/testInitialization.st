tests
testInitialization

	| gui |
	gui := TravisCIGUI new.
	self assert: gui client notNil.
	self assert: gui backgroundColor equals: Color gray.
	gui delete