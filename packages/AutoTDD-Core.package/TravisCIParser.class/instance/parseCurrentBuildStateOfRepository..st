as yet unclassified
parseCurrentBuildStateOfRepository: aJson

	| builds |
	builds := self primitiveParseBuildsOf: aJson.
	^ self primitiveParseStateOf: (self primitiveParseFirstOf: builds)