accessing
testCategories: aTestCategories

	testCategories ~= aTestCategories ifTrue: [
		testCategories := aTestCategories.
		self invalidateTestSuite ]