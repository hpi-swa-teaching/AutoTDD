as yet unclassified
loadImage: aString

	^ self loadImage: aString ifAbsent: [ Form extent: (0 @ 0) ]