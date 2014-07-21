objects from disk
primitiveLoadResource: aString

	^ ImageReadWriter formFromFileNamed: (FileDirectory uri: aString) fullName