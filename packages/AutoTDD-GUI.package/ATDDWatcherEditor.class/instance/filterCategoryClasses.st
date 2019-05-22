accessing-categories
filterCategoryClasses
	| pattern |
	pattern := UIManager default 
					request: 'Pattern(s) to select categories:\    (separate patterns with '';'')' withCRs
					initialAnswer: (categoryPattern ifNil: ['*']).

	(pattern isNil or: [pattern isEmpty]) ifTrue: [^ self].

	self
		selectedCategoryClasses: (((categoryPattern := pattern) subStrings: ';')
								inject: Set new
								into: [:matches :subPattern |
										matches
											addAll: (self categoryClasses select: [ :each | subPattern match: each]);
											yourself]);
		changed: #allSelections