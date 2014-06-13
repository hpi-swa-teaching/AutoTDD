as yet unclassified
matrix

	| test |
	test := self data results at: self selectedResult ifAbsent: [ TestResult new ].
	self tests: (OrderedCollection new
		addAll: test errors;
		addAll: test failures;
		addAll: test passed;
		yourself).
	^ OrderedCollection new
		addAll: (test errors collect: [ :each | 
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: self class red)]);
		addAll: (test failures collect: [ :each | 
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: self class yellow)]);
		addAll: (test passed collect: [ :each | 
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: self class green)]);
		yourself
		