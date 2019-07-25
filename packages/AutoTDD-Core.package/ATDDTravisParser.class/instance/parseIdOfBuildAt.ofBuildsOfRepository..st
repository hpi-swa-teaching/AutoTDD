parsing
parseIdOfBuildAt: aNumber ofBuildsOfRepository: aJson
	
	| builds build |
	
	builds := self primitiveParseBuildsOf: aJson.
	build := self primitiveParseAt: aNumber of: builds.
	
	^ self primitiveParseIdOf: build