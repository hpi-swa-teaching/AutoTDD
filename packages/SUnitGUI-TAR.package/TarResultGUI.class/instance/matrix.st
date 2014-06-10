as yet unclassified
matrix

	| test matrix |
	test := self data results at: self selectedResult ifAbsent: [ ^#() ].
	self tests: OrderedCollection new.
	self tests
		addAll: test errors;
		addAll: test failures;
		addAll: test passed.
	matrix := OrderedCollection new.
	^ matrix
		addAll: (test errors collect: [ :each | 
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: Color red)]);
		addAll: (test failures collect: [ :each | 
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: Color yellow)]);
		addAll: (test passed collect: [ :each | 
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: Color green)]);
		yourself
		