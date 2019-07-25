primitive-parsing
primitiveParseBuildOf: aJson

	^ aJson at: 'build'  ifAbsent: [JsonObject new]