parsing
parseHeadCommitOf: aJson

	^ aJson at: 'head_commit' ifAbsent: [ JsonObject new ]