tests
testEmptyResults

	| parser |
	parser := TarParser new.
	self assert: (parser parseCurrentStateOf: OrderedCollection new) equals: #unknown.