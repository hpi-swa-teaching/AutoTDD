accessing-categories
filterTestCategoryClasses
	| pattern |
	self flag: #todo. "where does categoryPattern come from; should we adopt it?"
	pattern := UIManager default 
					request: 'Pattern(s) to select categories:\    (separate patterns with '';'')' withCRs
					initialAnswer: (categoryPattern ifNil: ['*']).

	(pattern isNil or: [pattern isEmpty]) ifTrue: [^ self].

	self
		selectedTestCategoryClasses: (((categoryPattern := pattern) subStrings: ';')
								inject: Set new
								into: [:matches :subPattern |
										matches
											addAll: (self testCategoryClasses select: [ :each | subPattern match: each]);
											yourself]);
		changed: #allSelections