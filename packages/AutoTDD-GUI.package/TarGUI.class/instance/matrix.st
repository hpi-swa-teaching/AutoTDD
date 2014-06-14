as yet unclassified
matrix

	| test |
	test := self data results at: self selectedResult ifAbsent: [ TestResult new ].
	self tests: OrderedCollection new.
	^ OrderedCollection new
		addAll: (test errors collect: [ :each | 
			self tests add: each.
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: (self colorDictionary at: #errored) value)]);
		addAll: (test failures collect: [ :each | 
			self tests add: each.
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: (self colorDictionary at: #failed) value)]);
		addAll: (test passed collect: [ :each | 
			self tests add: each.
			Text new
				append: each asString;
				addAttribute: (TextColor new
					color: (self colorDictionary at: #passed) value)]);
		yourself
		