tests
testValues

	| gui |
	gui := TravisCIGUI new.
	gui repositoryJson: self sampleRepositoryBuilds.
	self
		assert: gui builds isArray;
		assert: (gui builds allSatisfy: [ :each | each isString or: [ each isText ] ]);
		assert: gui jobs isArray;
		assert: (gui jobs allSatisfy: [ :each | each isString or: [ each isText ] ]);
		assert: gui stateColor isColor