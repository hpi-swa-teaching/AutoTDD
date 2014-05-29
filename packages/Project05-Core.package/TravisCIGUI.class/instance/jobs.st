accessing
jobs
	
	^ (self parser parseJobIdsOfBuildAt: self selectedBuild
		ofBuildsOfRepository: self repositoryJson) collect: [ :each | each asString]