as yet unclassified
localState

	| data |
	data := self localData
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ self localData results ].
	^ (self localParser parseCurrentStateOf: data)