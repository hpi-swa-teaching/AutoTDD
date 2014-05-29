tests
testValues

	| gui |
	gui := TravisCIGUI new.
	gui repositoryJson: self sampleRepositoryBuilds.
	self
		assert: gui builds isArray;
		assert: gui jobs isArray;
		assert: gui stateColor isColor