accessing
testCategory: aTestCategory

	testCategory ~= aTestCategory
		ifTrue: [ testCategory := aTestCategory.
			self invalidateTestSuite ]