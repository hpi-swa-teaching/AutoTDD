accessing-categories
testCategoryAt: anIndex
	^ self selectedTestCategories includes: (self testCategories at: anIndex ifAbsent: [ ^ false ])