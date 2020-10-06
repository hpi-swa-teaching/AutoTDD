data-processing
firstBuildJson
	
	| firstBuildId |
	
	firstBuildId := self parser parseIdOfBuildAt: 1 ofBuildsOfRepository: self repositoryJson.
	
	^ self buildJsonFor: firstBuildId