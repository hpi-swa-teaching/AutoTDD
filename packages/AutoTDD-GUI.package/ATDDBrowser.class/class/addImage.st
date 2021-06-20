accessing
addImage

	^ self isThemeButtonLight
		ifTrue: [ self addImageLight ]
		ifFalse: [ self addImageDark ]