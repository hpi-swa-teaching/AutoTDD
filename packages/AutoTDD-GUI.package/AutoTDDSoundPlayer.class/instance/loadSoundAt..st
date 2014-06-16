as yet unclassified
loadSoundAt: aSymbol

	| name |
	name := (self soundDictionary at: aSymbol) value.
	^ self loadSound: name