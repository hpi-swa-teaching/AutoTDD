accessing-categories
filterTestCategories
	| pattern |
	self flag: #todo. "where does categoryPattern come from; should we adopt it?"
	pattern := UIManager default 
					request: 'Pattern(s) to select test categories:\    (separate patterns with '';'')' withCRs
					initialAnswer: (categoryPattern ifNil: ['*']).

	(pattern isNil or: [pattern isEmpty]) ifTrue: [^ self].

	self
		selectedTestCategories: (((categoryPattern := pattern) subStrings: ';')
								inject: Set new
								into: [:matches :subPattern |
										matches
											addAll: (self testCategories select: [ :each | subPattern match: each]);
											yourself]);
		changed: #allSelections