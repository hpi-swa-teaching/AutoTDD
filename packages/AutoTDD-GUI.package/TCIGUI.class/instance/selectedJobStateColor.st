as yet unclassified
selectedJobStateColor

	| buildId build job state |

	buildId := self parser parseIdOfBuildAt: self selectedBuild ofBuildsOfRepository: 
		self data repositoryJson.
	build := self data buildJsonFor: buildId.
	job := self parser parseJobAt: self selectedJob ofBuild: build.
	state := self parser parseStateOfJob: job.
	^ self convertColorForState: state