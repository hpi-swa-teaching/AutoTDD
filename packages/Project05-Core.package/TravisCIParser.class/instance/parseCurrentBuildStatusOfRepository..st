as yet unclassified
parseCurrentBuildStatusOfRepository: aJson

	| builds |
	builds := self parseBuildsOfRepository: aJson.
	builds ifEmpty: [^ 'unknown'].
	^ self parseStateOfBuild: builds first