resources
loadImageAt: aSymbol

	| name |
	name := (self imageDictionary at: aSymbol) value.
	^ self loadImage: name