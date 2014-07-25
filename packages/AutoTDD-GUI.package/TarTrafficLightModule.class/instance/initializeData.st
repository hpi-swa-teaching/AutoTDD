initialization
initializeData

	self data: (TARTestAutoRunner
		initializeForCategories: self categories
		withTestsIn: self testCategories)