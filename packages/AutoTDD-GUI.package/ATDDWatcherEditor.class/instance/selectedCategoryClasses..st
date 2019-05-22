accessing
selectedCategoryClasses: anObject
Transcript cr.
Transcript cr.
	Transcript show: anObject asString.
	selectedCategoryClasses := anObject.
	self changed: #selectedCategoryClasses