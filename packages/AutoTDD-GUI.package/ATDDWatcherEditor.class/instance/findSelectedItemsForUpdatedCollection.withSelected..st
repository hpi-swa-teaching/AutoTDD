utility
findSelectedItemsForUpdatedCollection: aCollection withSelected: aSelectedCollection
	
	^ aSelectedCollection 
		ifNil: [ aCollection ] 
		ifNotNil: [ aSelectedCollection select: [ :each | aCollection includes: each ] ]