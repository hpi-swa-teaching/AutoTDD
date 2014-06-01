as yet unclassified
log

	| buildId logid jobid log |
	buildId := self parser parseIdOfBuildAt: self selectedBuild ofBuildsOfRepository: self repositoryJson.
	jobid := self parser parseIdOfJobAt: self selectedJob ofBuild: (self buildJsonFor: buildId).
	logid := self parser parseLogIdOfJobAt: self selectedJob ofBuild: (self buildJsonFor: buildId).
	log := self logFor: jobid.
	log first = $< ifTrue: [ log := self parser parseBodyOfLog: (self logJsonFor: logid) ].
	^ log