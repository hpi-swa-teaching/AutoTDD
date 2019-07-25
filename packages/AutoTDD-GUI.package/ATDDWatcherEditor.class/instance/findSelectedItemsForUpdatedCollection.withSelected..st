utilities
findSelectedItemsForUpdatedCollection: aCollection withSelected: selected
	
	^ selected ifNil: [ aCollection ] ifNotNil: [ selected select: [ :each | aCollection includes: each ] ]