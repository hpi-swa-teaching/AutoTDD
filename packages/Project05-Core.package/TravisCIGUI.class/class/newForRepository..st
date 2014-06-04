instance creation
newForRepository: aString

	| data |
	data := TravisCIRepository newForRepository: aString.
	^ self newWithData: data