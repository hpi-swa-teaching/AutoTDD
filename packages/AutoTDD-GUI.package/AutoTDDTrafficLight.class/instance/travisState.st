travis
travisState

	| data |
	data := self travisData
		ifNil: [ JsonObject new ]
		ifNotNil: [ self travisData repositoryJson ].
	^ (self travisParser parseCurrentBuildStateOfRepository: data) asSymbol