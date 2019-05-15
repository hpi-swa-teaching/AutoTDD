utility
logForCurrentBuildsFirstJob

	| buildId build logId jobId |
	
	buildId := self parser parseIdOfBuildAt: 1 ofBuildsOfRepository: self data repositoryJson.
	build := self data buildJsonFor: buildId.
	jobId := self parser parseIdOfJobAt: 1 ofBuild: build.
	logId := self parser parseLogIdOfJobAt: 1 ofBuild: build.
	^self parser parseBodyOfLog: (self data logFor: jobId or: logId)