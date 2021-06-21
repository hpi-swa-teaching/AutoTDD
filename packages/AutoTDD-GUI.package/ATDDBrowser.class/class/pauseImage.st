accessing
pauseImage

	^ self isThemeButtonLight
		ifTrue: [ self pauseImageLight ]
		ifFalse: [ self pauseImageDark ]