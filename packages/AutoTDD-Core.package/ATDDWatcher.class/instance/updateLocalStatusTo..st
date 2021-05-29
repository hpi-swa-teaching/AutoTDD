updating
updateLocalStatusTo: aSymbol
	
	self internalStatus: aSymbol.
	(#( #passed #failed #errored ) includes: aSymbol) ifTrue: [ self finishedTesting ].
	ATDDBrowser changedWatchers