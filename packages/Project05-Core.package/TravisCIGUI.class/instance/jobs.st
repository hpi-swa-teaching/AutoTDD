accessing
jobs

	|jobs buildId|
	buildId := ((self parser parseBuildHistoryOfRepository: self repositoryJson) 
			at: self selectedBuild) at: #id.
	jobs := (self parser parseJobsOfBuild: (self client getJsonForBuild: buildId)).	
	^ (jobs collect: [:job |
		Text new append:
			'#',(self parser parseEnvOfJob: job);
			addAttribute: (TextColor new
				color: (self convertColorForState: (self parser parseStateOfJob: job)))])