morphcreation
showErrorsWithOffset: aOffset
	| offset |
	offset := aOffset.
	self testResultErrors keysAndValuesDo: [ :erroredTestCaseName :isNew |
		| testResultMorph |
		testResultMorph := self createTestResultMorphWithOffset: offset colored: Color red.
		self createTestResultTextOn: testResultMorph withText: erroredTestCaseName consider: isNew;
			createDelegateMorphOn: testResultMorph.
		self testResultMorphs at: erroredTestCaseName asString put: testResultMorph.
		self addMorph: testResultMorph.
		testResultMorphsShown := true.
		offset := offset +1
	].
	^ offset