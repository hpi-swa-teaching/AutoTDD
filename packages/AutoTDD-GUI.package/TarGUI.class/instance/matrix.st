as yet unclassified
matrix

	| test matrix |
	test := self parser parseResultAt: self selectedResult of: self data results.
	self tests: OrderedCollection new.
	"Usage of addAll: mixes up the order of the elements in matrix and tests"
	matrix := OrderedCollection new.
	test errors do: [ :each | 
		self tests add: each.
		matrix add: (Text new
			append: each asString;
			addAttribute: (TextColor new
				color: (self colorDictionary at: #errored) value))].
	test failures do: [ :each | 
		self tests add: each.
		matrix add: (Text new
			append: each asString;
			addAttribute: (TextColor new
				color: (self colorDictionary at: #failed) value))].
	test passed do: [ :each | 
		self tests add: each.
		matrix add: (Text new
			append: each asString;
			addAttribute: (TextColor new
				color: (self colorDictionary at: #passed) value))].
	^ matrix