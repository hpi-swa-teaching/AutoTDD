as yet unclassified
log

	| buildId id |
	buildId := self parser parseIdOfBuildAt: self selectedBuild ofBuildsOfRepository: self repositoryJson.
	id := self parser parseLogIdOfJobAt: self selectedJob ofBuild: (self buildJsonFor: buildId).
	^ self parser parseBodyOfLog: (self logJsonFor: id)