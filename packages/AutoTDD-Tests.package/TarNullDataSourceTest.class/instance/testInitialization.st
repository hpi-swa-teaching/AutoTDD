as yet unclassified
testInitialization

	| tar |
	tar := TarNullDataSource new.
	self
		assert: tar results notNil;
		assert: tar results isSequenceable;
		assert: tar categories notNil;
		assert: tar categories isSequenceable;
		assert: tar testCategories notNil;
		assert: tar testCategories isSequenceable;
		assert: tar isNullObject