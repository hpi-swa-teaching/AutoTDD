objects from disk
loadImage: aString

	^ self loadImage: aString ifAbsent: [ Form extent: (0 @ 0) ]