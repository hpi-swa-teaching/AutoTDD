initialization
initializeData

	self data: (TarTestAutoRunner
		initializeForCategories: self categories
		withTestsIn: self testCategories)