accessing
removeImage

	^ self isThemeButtonLight
		ifTrue: [ self removeImageLight ]
		ifFalse: [ self removeImageDark ]