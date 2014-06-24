tests
testValues

	self
		assert: sut history isArray;
		assert: (sut history allSatisfy: [ :build | build isString or: [ build isText ] ]);
		assert: sut matrix isArray;
		assert: (sut matrix allSatisfy: [ :job | job isString or: [ job isText ] ]);
		assert: sut stateColor isColor