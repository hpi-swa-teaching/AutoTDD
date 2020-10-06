updating
updateTestCategoryClasses
	
	| classesForTestCategories |
	
	self classwiseTestCategorySelection ifFalse: [ ^ self ].
	classesForTestCategories := self findTestCategoryClasses.
	self
		testCategoryClasses: (self findClassesForCategoriesList: classesForTestCategories);
		changed: #testCategoryClasses;
		selectedTestCategoryClasses: (self findSelectedItemsForUpdatedCollection: classesForTestCategories withSelected: self selectedTestCategoryClasses);
		changed: #selectedTestCategoryClasses