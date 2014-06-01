as yet unclassified
parseCurrentBuildNumberOfRepository: aJson

	| builds |
	builds := self primitiveParseBuildsOf: aJson.
	^ self primitiveParseNumberOf: (self primitiveFirstOf: builds)