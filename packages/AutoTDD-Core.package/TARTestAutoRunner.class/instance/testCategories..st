accessing
testCategories: aTestCategories

	self testCategories ~= aTestCategories ifTrue: [
		testCategories := aTestCategories.
		self invalidateTestSuite ]