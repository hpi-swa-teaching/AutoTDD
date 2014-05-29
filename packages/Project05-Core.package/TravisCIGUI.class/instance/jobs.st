accessing
jobs
	
	^ (self parser parseJobIdsOfBuildAt: self selectedBuild
		ofBuildsOfRepository: self json) collect: [ :each | each asString]