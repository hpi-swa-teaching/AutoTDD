accessing
selectedTestCategories

	^ selectedTestCategories ifNil: [ selectedTestCategories := OrderedCollection new ]