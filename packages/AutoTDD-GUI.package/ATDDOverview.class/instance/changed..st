updating
changed: aSymbol 
	super changed: aSymbol.
	aSymbol = #watchers
		ifTrue: [self changedWatchers].
	aSymbol = #travisStatuses
		ifTrue: [self changedTravisStatuses]