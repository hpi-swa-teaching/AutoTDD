accessing
state

	| data |
	data := self data results.
	^ (self parser parseCurrentStateOf: data)