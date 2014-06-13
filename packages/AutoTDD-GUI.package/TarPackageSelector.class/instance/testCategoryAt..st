as yet unclassified
testCategoryAt: anIndex

	^ self selectedTestCategories includes: (self testCategories at: anIndex ifAbsent: [ ^ false ])