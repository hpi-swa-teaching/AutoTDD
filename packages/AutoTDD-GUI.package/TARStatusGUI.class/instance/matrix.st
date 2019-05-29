accessing
matrix

	| test |
	test := self parser parseResultAt: self selectedResult of: self testResults.
	self tests: (OrderedCollection new
		addAll: test errors;
		addAll: test failures;
		addAll: test passed;
		yourself).
	^ self tests collect: [ :each |
		Text new
			append: each asString;
			addAttribute: (TextColor new
				color: (self determineColorOf: each within: test));
			yourself ]