accessing
jobs
	
	| builds |
	builds := self parser parseBuildsOfRepository: self json.
	(builds size < self selectedBuild) ifTrue: [ ^#() ].
	^ (self parser parseJobIdsOfBuild: (builds at: self selectedBuild)) collect: [ :each |
		each asString]