accessing-categories
filterFor: aCollection withRequest: aString
	| pattern |
	pattern := UIManager default 
					request: aString withCRs
					initialAnswer: (categoryPattern ifNil: ['*']).
	(pattern isNil or: [pattern isEmpty]) ifTrue: [^ self].
	^ (((self categoryPattern: pattern) subStrings: ';')
				inject: Set new
				into: [:matches :subPattern |
						matches
							addAll: (aCollection select: [ :each | subPattern match: each]);
							yourself])