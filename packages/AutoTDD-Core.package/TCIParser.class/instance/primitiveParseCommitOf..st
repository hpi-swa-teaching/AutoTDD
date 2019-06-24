primitive-parsing
primitiveParseCommitOf: aJson

	^ aJson at: 'commit'  ifAbsent: [JsonObject new]