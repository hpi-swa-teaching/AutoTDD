accessing-categories
filterCategories
	| pattern |
	pattern := UIManager default 
					request: 'Pattern(s) to select categories:\    (separate patterns with '';'')' withCRs
					initialAnswer: (categoryPattern ifNil: ['*']).

	(pattern isNil or: [pattern isEmpty]) ifTrue: [^ self].

	self
		selectedCategories: (((categoryPattern := pattern) subStrings: ';')
								inject: Set new
								into: [:matches :subPattern |
										matches
											addAll: (self categories select: [ :each | subPattern match: each]);
											yourself]);
		changed: #allSelections