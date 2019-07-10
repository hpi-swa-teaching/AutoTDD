loading
loadResource: aString ifAbsent: aBlock

	| fileName |
	fileName := self class defaultUri, aString.
	^ (FileDirectory default fileExists: (FileDirectory uri: fileName) fullName)
		ifTrue: [ self primitiveLoadResource: fileName ]
		ifFalse: [ aBlock value ]