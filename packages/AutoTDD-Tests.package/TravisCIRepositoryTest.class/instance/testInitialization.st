tests
testInitialization

	| repo |
	repo := TravisCIRepository new.
	self
		assert: repo client notNil;
		assert: repo parser notNil