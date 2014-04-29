initialization
initializeForCategory: categoryName withTestsIn: testCategoryName 
	| tarWidget |
	tarWidget := self new initializeForCategory: categoryName withTestsIn: testCategoryName;
				 yourself.
	^ tarWidget