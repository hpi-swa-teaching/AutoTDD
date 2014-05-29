tests
testEmptyValues

	| gui |
	gui := TravisCIGUI new.
	gui json: self emptyRepositoryBuilds.
	self
		assert: gui builds isArray;
		assert: gui jobs isArray;
		assert: gui stateColor isColor