accessing
overviewImage

	^ self isThemeButtonLight
		ifTrue: [ self overviewImageLight ]
		ifFalse: [ self overviewImageDark ]