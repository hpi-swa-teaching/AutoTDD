accessing-categories
filterCategories
	| pattern |
	pattern := UIManager default 
					request: 'Pattern(s) to select categories:\    (separate patterns with '';'')' withCRs
					initialAnswer: (categoryPattern ifNil: ['*']).
	(pattern isNil or: [pattern isEmpty]) ifTrue:
		[^self].
	categoriesSelected := ((categoryPattern := pattern) subStrings: ';')
								inject: Set new
								into: [:matches :subPattern|
									matches
										addAll: (categories select: [ :each | subPattern match: each]);
										yourself].
	self changed: #allSelections; changed: #categorySelected; updateClasses