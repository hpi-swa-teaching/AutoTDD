accessing
infoImage

	^ self isThemeButtonLight
		ifTrue: [ self infoImageLight ]
		ifFalse: [ self infoImageDark ]