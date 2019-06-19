utility
addTestCategoriesToSuite

	self testCategories do: [ :testCategory |
		self addTestsToSuiteFromCategory: testCategory ]