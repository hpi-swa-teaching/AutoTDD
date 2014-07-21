as yet unclassified
addTestCategoriesToSuite

	self testCategories do: [ :testCategory |
		self addTestsToSuiteFromCategory: testCategory ]