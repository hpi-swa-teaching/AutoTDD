accessing
volumeOnImage

	^ self isThemeButtonLight
		ifTrue: [ self volumeOnImageLight ]
		ifFalse: [ self volumeOnImageDark ]