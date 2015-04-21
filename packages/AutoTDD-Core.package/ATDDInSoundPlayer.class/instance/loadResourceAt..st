loading
loadResourceAt: aSymbol

	^ self sounds at: aSymbol ifAbsentPut: [ | name  sel |
		name := self resourceDictionary at: aSymbol.
		sel := name asLegalSelector asSymbol.
		(self respondsTo: sel)
			ifFalse: [self class defaultResource]
			ifTrue: [self perform: sel]]