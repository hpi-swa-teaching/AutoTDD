accessing
state

	| data |
	self data
		ifNil: [ data := JsonObject new ]
		ifNotNil: [ data := self data repositoryJson ].
	^ (self parser parseCurrentBuildStateOfRepository: data) asSymbol