as yet unclassified
categoryAt: anIndex

	^ self selectedCategories includes: (self categories at: anIndex ifAbsent: [ ^ false ])