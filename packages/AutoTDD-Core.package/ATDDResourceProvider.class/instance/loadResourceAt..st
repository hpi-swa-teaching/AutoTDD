loading
loadResourceAt: aSymbol

	| name |
	name := self resourceDictionary at: aSymbol.
	^ self loadResource: name