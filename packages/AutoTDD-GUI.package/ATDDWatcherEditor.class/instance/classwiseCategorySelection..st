accessing
classwiseCategorySelection: anObject
	self flag: #todo.
	classwiseCategorySelection := anObject.
	self handleClasswiseCategorySelectionChange