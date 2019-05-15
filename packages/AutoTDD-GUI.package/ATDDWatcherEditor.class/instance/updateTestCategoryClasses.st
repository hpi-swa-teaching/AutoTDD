updating
updateTestCategoryClasses

	| classesForTestCategories |
	self classwiseTestCategorySelection
		ifTrue: [
			classesForTestCategories := self findTestCategoryClasses.
	
			self testCategoryClasses: (self findClassesForCategoriesList: classesForTestCategories).
			self selectedTestCategoryClasses: (self findSelectedClassesForCategoriesList: classesForTestCategories withSelected: self selectedTestCategoryClasses).
	
			self flag: #todo. "what are the correct calls below?"
			self 
				changed: #testCategoryClasses;
				changed: #selectedTestCategoryClasses
		]