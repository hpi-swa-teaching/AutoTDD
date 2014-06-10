accessing
travisState

	| data |
	self travisData
		ifNil: [ data := JsonObject new ]
		ifNotNil: [ data := self travisData repositoryJson ].
	^ (self parser parseCurrentBuildStateOfRepository: data) asSymbol