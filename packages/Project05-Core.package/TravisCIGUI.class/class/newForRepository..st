as yet unclassified
newForRepository: aString

	^ self new
		repository: aString;
		update;
		yourself