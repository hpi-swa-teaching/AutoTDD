as yet unclassified
log

	| buildId id |
	buildId := self parser parseIdOfBuildAt: self selectedBuild ofBuildsOfRepository: self repositoryJson.
	id := self parser parseIdOfJobAt: self selectedJob ofBuild: (self buildJsonFor: buildId).
	id negative ifTrue: [ ^ '' ].
	^ self logJsonFor: id