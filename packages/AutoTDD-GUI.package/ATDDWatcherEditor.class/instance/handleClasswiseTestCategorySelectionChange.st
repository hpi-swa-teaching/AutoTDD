accessing
handleClasswiseTestCategorySelectionChange
	
	self classwiseTestCategorySelection
		ifTrue: [ self updateTestCategoryClasses ]
		ifFalse: [ self clearTestCategoryClasses ]