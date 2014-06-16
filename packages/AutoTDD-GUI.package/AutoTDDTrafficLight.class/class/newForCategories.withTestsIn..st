initialization
newForCategories: categories withTestsIn: testCategories 
	
	| morph |
	morph := self new.
	morph local initializeForCategories: categories withTestsIn: testCategories.
	^ morph