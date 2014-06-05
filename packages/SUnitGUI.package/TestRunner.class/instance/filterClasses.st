accessing-classes
filterClasses
	| pattern |
	pattern := UIManager default 
					request: 'Pattern(s) to select tests:\  (separate patterns with '';'')' withCRs
					initialAnswer: (classPattern ifNil: '*').
	(pattern isNil or: [pattern isEmpty]) ifTrue:
		[^self].
	classesSelected := ((classPattern := pattern) subStrings: ';')
							inject: Set new
							into: [:matches :subPattern|
								matches
									addAll: (classes select: [ :each | subPattern match: each name]);
									yourself].
	self
		changed: #allSelections;
		changed: #classSelected;
		changed: #hasRunnable