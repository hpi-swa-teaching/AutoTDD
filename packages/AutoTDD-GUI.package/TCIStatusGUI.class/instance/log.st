accessing
log

	| buildId build logId jobId |
	buildId := self parser parseIdOfBuildAt: self selectedBuild ofBuildsOfRepository: self data repositoryJson.
	build := self data buildJsonFor: buildId.
	jobId := self parser parseIdOfJobAt: self selectedJob ofBuild: build.
	logId := self parser parseLogIdOfJobAt: self selectedJob ofBuild: build.
	^ self parser parseBodyOfLog: (self data logFor: jobId or: logId)