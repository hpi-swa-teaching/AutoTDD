parsing
parseBuildFrom: aJson
	| build commit |

	build := self primitiveParseBuildOf: aJson.
	commit := self primitiveParseCommitOf: aJson.
	
	^ (IdentityDictionary new)
		at: #state put: (self primitiveParseStateOf: build);
		at: #message put: (self primitiveParseMessageOf: commit);
		at: #branch put: (self primitiveParseBranchOf: commit);
		at: #author put: (self primitiveParseAuthorOf: commit);
		yourself