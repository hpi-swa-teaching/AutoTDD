accessing
resultsImage

	^ self isThemeButtonLight
		ifTrue: [ self resultsImageLight ]
		ifFalse: [ self resultsImageDark ]