as yet unclassified
parseJobIdsOfBuildAt: aNumber ofBuildsOfRepository: aJson

	| builds build |
	builds := self parseBuildsOfRepository: aJson.
	build := self parseBuildAt: aNumber ofBuilds: builds.
	^ self parseJobIdsOfBuild: build