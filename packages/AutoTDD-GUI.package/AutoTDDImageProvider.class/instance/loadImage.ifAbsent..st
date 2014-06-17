objects from disk
loadImage: aString ifAbsent: aBlock

	| image |
	image := 'AutoTDD/images/', aString.
	(FileDirectory default fileExists: (FileDirectory uri: image) fullName )
		ifTrue: [ ^ ImageReadWriter formFromFileNamed: (FileDirectory uri: image) fullName ]
		ifFalse: [ ^ aBlock value ]