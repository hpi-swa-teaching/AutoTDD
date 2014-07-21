as yet unclassified
isInListenedCategories: aCategory

	^ (self isInCategories: aCategory) or: [ self isInTestCategories: aCategory ]