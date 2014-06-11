as yet unclassified
loadImage: aString ifAbsent: aBlock

	| image |
	image := 'travis_images/', aString.
	(FileDirectory default fileExists: (FileDirectory uri: image) fullName )
		ifTrue: [ ^ ImageReadWriter formFromFileNamed: (FileDirectory uri: image) fullName ]
		ifFalse: [ ^ aBlock value ]