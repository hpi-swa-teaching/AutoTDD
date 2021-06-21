accessing
resumeImage

	^ self isThemeButtonLight
		ifTrue: [ self resumeImageLight ]
		ifFalse: [ self resumeImageDark ]