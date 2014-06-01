accessing
jobs

	|jobs buildId build|
	
	build := (self parser parseBuildHistoryOfRepository: self repositoryJson).
	build ifEmpty: [ ^ build  ].
	buildId := (build at: self selectedBuild) at: #id.
	jobs := (self parser parseJobsOfBuild: (self client getJsonForBuild: buildId)).	
	^ (jobs collect: [:job |
		Text new append:
			'#',(self parser parseEnvOfJob: job);
			addAttribute: (TextColor new
				color: (self convertColorForState: (self parser parseStateOfJob: job)))])