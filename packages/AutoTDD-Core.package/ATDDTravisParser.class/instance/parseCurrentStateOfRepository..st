parsing
parseCurrentStateOfRepository: aJson

	| firstBuild result |
	firstBuild := self primitiveParseFirstOf: (self primitiveParseBuildsOf: aJson).
	result := (IdentityDictionary new)
					 at: #state put: (self primitiveParseStateOf: firstBuild); yourself.
	^ result at: #status