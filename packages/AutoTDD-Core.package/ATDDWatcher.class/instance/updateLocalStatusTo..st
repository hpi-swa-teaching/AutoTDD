updating
updateLocalStatusTo: aSymbol
	self flag: #todo. "how do we handle the changed calls? Without this one, the multiple Browser instances do not synchronize"
	self localStatus: aSymbol.
	(#(#passed #failed #errored) includes: aSymbol) ifTrue: [self finishedTesting].
	ATDDBrowser changed: #watchers