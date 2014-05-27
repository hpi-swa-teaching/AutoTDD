as yet unclassified
parseCurrentBuildNumberOfRepository: aJson

	| builds |
	builds := self parseBuildsOfRepository: aJson.
	builds ifEmpty: [^ '0'].
	^ self parseNumberOfBuild: builds first