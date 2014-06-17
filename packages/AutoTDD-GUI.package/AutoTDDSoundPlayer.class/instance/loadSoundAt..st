objects from disk
loadSoundAt: aSymbol

	| name |
	name := (self soundDictionary at: aSymbol) value.
	^ self loadSound: name