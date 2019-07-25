updating
updateJobLog
	
	| buildId build logId jobId |
	
	buildId := self parser
		parseIdOfBuildAt: self selectedHistory
		ofBuildsOfRepository: self data repositoryJson.
	build := self data buildJsonFor: buildId.
	jobId := self parser parseIdOfJobAt: self selectedJob ofBuild: build.
	logId := self parser parseLogIdOfJobAt: self selectedJob ofBuild: build.
	self
		log: (self parser parseBodyOfLog: (self data logFor: jobId or: logId));
		changed: #log