accessing
playImage

	^ self isThemeButtonLight
		ifTrue: [ self playImageLight ]
		ifFalse: [ self playImageDark ]