utility
isInListenedCategories: aCategory
	
	^ (self isInCategories: aCategory) or: [
		self isInTestCategories: aCategory ]