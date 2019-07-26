accessing-categories
categoryClassAt: anIndex
	
	^ self selectedCategoryClasses includes: (self categoryClasses at: anIndex ifAbsent: [ ^ false ])