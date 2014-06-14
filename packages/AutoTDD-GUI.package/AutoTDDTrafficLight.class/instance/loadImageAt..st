as yet unclassified
loadImageAt: aSymbol

	| name |
	name := (self imageDictionary at: aSymbol) value.
	^ self loadImage: name ifAbsent: [ Form extent: (0 @ 0) ]