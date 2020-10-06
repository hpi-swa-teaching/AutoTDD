accessing
getJsonForBuild: aString

	^ self sampleBuildJsons at: aString ifAbsent: [ JsonObject new ]