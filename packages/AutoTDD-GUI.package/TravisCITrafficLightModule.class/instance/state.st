accessing
state

	| data |
	data := self data
		ifNil: [ JsonObject new ]
		ifNotNil: [ self data repositoryJson ].
	^ (self parser parseCurrentBuildStateOfRepository: data) asSymbol