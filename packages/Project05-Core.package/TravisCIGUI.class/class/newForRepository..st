instance creation
newForRepository: aString

	^ self new
		repository: aString;
		update;
		yourself