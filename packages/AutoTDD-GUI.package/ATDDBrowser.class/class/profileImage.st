accessing
profileImage

	^ self isThemeButtonLight
		ifTrue: [ self profileImageLight ]
		ifFalse: [ self profileImageDark ]