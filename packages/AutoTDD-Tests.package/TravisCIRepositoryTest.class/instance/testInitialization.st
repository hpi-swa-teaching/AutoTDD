tests
testInitialization

	| repo |
	repo := TravisCIRepository new.
	self assert: repo client notNil