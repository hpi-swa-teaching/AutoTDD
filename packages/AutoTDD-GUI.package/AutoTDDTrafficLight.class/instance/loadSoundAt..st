resources
loadSoundAt: aSymbol

	| name |
	name := (self soundDictionary at: aSymbol) value.
	^ self loadSound: name