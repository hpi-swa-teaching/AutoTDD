as yet unclassified
log

	| buildId build logId jobId |
	buildId := self parser parseIdOfBuildAt: self selectedBuild ofBuildsOfRepository: self repositoryJson.
	build := self buildJsonFor: buildId.
	jobId := self parser parseIdOfJobAt: self selectedJob ofBuild: build.
	logId := self parser parseLogIdOfJobAt: self selectedJob ofBuild: build.
	^ self logFor: jobId or: logId