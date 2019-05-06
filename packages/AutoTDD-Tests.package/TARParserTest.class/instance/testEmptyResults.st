tests
testEmptyResults

	| parser |
	parser := TARParser new.
	self assert: (parser parseCurrentStateOf: OrderedCollection new) equals: #unknown.