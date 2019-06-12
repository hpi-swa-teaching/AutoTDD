behavior
isClassWatched: aClass
	self isWatchingClasswise
		ifTrue: [ ^self classesToWatch includes: aClass ]
		ifFalse: [ ^self categoriesToWatch includes: aClass category ]