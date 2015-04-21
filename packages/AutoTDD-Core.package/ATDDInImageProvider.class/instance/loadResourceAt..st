loading
loadResourceAt: aSymbol

	^ self images at: aSymbol ifAbsentPut: [
		(self respondsTo: aSymbol)
			ifFalse: [self class defaultResource]
			ifTrue: [self perform: aSymbol]]