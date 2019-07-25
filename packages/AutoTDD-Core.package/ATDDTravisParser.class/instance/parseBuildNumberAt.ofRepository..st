parsing
parseBuildNumberAt: aNumber ofRepository: aJson
	
	| builds |
	
	builds := self primitiveParseBuildsOf: aJson.
	
	^ self primitiveParseNumberOf: (self primitiveParseAt: aNumber of: builds)