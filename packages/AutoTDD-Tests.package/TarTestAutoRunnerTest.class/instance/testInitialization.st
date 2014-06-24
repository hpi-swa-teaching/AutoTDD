as yet unclassified
testInitialization

	| tar |
	tar := TarTestAutoRunner new.
	self
		assert: tar process notNil;
		assert: tar results notNil;
		assert: tar results isSequenceable;
		assert: tar testRunningSemaphore notNil