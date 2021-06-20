accessing
volumeOffImage

	^ self isThemeButtonLight
		ifTrue: [ self volumeOffImageLight ]
		ifFalse: [ self volumeOffImageDark ]