updating
changed: aSymbol
	
	self allInstancesDo: [ :each | each changed: aSymbol ].
	ATDDOverview allInstancesDo: [ :each | each changed: aSymbol ]