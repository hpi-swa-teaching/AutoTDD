as yet unclassified
matrix

	| test |
	test := self parser parseResultAt: self selectedResult of: self data results.
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
		