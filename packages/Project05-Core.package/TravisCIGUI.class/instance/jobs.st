accessing
jobs

	|jobIds jobJson|
	
	jobIds := (self parser parseJobIdsOfBuildAt: self selectedBuild
		ofBuildsOfRepository: self repositoryJson) collect: [ :each | each asString].
		
	^ (jobIds collect: [:jobId |
		jobJson := self client getJsonForJob: jobId.
		Text new append:
			'#',(self parser parseEnvOfJob: jobJson);
			addAttribute: (TextColor new
				color: (self convertColorForState: (self parser parseStateOfJob: jobJson)))])
	
	