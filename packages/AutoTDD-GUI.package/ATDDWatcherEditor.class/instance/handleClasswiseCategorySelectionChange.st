accessing
handleClasswiseCategorySelectionChange
	
	self classwiseCategorySelection ifTrue: [ self updateCategoryClasses ] ifFalse: [ self clearCategoryClasses ]