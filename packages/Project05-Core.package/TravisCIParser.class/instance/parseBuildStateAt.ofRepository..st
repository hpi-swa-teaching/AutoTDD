as yet unclassified
parseBuildStateAt: aNumber ofRepository: aJson

	| builds |
	builds := self primitiveParseBuildsOf: aJson.
	^ self primitiveParseStateOf: (self primitiveParseAt: aNumber of: builds)