as yet unclassified
parseCurrentBuildStateOfRepository: aJson

	| builds |
	builds := self parseBuildsOfRepository: aJson.
	builds ifEmpty: [^ 'unknown'].
	^ self parseStateOfBuild: builds first