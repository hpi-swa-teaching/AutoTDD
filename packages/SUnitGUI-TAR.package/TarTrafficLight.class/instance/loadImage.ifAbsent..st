as yet unclassified
loadImage: aString ifAbsent: aBlock

	| image |
	image := 'travis_images/', aString.
	(FileDirectory default fileExists: image)
		ifTrue: [ ^ ImageReadWriter formFromFileNamed: (FileDirectory uri: image) fullName ]
		ifFalse: [ ^ aBlock value ]