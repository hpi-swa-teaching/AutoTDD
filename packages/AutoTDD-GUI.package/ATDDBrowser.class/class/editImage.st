accessing
editImage

	^ self isThemeButtonLight
		ifTrue: [ self editImageLight ]
		ifFalse: [ self editImageDark ]