updating
updateCategoryClasses

	| classesForCategories |
	self flag: #todo. "Refactor"
	self classwiseCategorySelection
		ifTrue: [
			classesForCategories := self findCategoryClasses.
	
			self categoryClasses: (self findClassesForCategoriesList: classesForCategories).
			self selectedCategoryClasses: (self findSelectedClassesForCategoriesList: classesForCategories withSelected: self selectedCategoryClasses).
	
			self flag: #todo. "what are the correct calls below?"
			self
				changed: #categoryClasses;
				changed: #selectedCategoryClasses.
		]