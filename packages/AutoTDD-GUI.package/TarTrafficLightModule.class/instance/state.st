accessing
state

	| data |
	data := self data
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ self data results ].
	^ (self parser parseCurrentStateOf: data)