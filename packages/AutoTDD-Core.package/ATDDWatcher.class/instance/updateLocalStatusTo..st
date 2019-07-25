updating
updateLocalStatusTo: aSymbol
	
	self localStatus: aSymbol.
	(#( #passed #failed #errored ) includes: aSymbol) ifTrue: [ self finishedTesting ].
	ATDDBrowser changedWatchers