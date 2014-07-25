as yet unclassified
testInitialization

	| tar |
	tar := TARTestAutoRunner new.
	self
		assert: tar process notNil;
		assert: tar results notNil;
		assert: tar results isSequenceable;
		assert: tar testRunningSemaphore notNil