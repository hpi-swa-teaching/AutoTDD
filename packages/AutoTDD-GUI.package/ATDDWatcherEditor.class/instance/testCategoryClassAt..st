accessing-categories
testCategoryClassAt: anIndex
	
	^ self selectedTestCategoryClasses
		includes: (self testCategoryClasses at: anIndex ifAbsent: [ ^ false ])