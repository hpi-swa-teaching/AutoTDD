behavior
isClassWatched: aClass
	self watchClasses
		ifTrue: [ ^self watchedClasses includes: aClass ]
		ifFalse: [ ^self watchedPackages includes: aClass category ]