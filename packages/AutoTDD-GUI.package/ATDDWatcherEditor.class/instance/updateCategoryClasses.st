updating
updateCategoryClasses
	
	| classesForCategories |
	
	self classwiseCategorySelection ifFalse: [ ^ self ].
	classesForCategories := self findCategoryClasses.
	self
		categoryClasses: (self
				findClassesForCategoriesList: classesForCategories);
		changed: #categoryClasses;
		selectedCategoryClasses: (self
				findSelectedItemsForUpdatedCollection: 
					classesForCategories
				withSelected: self selectedCategoryClasses);
		changed: #selectedCategoryClasses