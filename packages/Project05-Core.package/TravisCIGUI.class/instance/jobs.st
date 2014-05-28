accessing
jobs
	
	^ (self parser parseJobIdsOfBuild: ((self parser parseBuildsOfRepository: self json) at: self selectedBuild)) collect: [ :each |
		each asString]