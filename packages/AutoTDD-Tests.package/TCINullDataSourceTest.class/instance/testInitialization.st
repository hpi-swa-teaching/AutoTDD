as yet unclassified
testInitialization

	| src |
	src := TCINullDataSource new.
	self
		assert: src repositoryJson notNil;
		assert: (src repositoryJson isKindOf: JsonObject);
		assert: src repository notNil;
		assert: src repository isString;
		assert: src isNullObject