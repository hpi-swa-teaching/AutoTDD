accessing
loadResourceAt: aSymbol

	^ self resources at: aSymbol ifAbsentPut: [
		(self respondsTo: aSymbol)
			ifFalse: [self class defaultResource]
			ifTrue: [self perform: aSymbol]]