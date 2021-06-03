updating
changed: aSymbol
	
	super changed: aSymbol.
	(ATDDTestingEntity testingEntities includes: aSymbol)
		ifTrue: [self changedTestingEntityOfType: aSymbol]
	