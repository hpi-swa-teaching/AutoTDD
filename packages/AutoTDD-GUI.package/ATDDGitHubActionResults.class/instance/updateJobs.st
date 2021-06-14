updating
updateJobs
	
	| id jobs |
	
	id := self parser parseIdOfWorkflowAt: self selectedHistory ofRepository: self data repositoryJson.
	jobs := self parser parseJobsOf: ( self data client getJsonForJobsForRepository: (self data repository , '/') forWorkflowRunId: id ).
	
	self jobs: (jobs collect: [ :job | ATDDGitHubActionWorkflowJob newForId: (parser primitiveParseIdOf: job) 
		name: (parser primitiveParseNameOf: job) 
		conclusion: (parser primitiveParseLatestWorkflowRunConclusion: job) ] ).
	
	self jobNames: (self jobs collect: [ :job |
		Text new append: '#' , job name;
		addAttribute: ( TextColor color: (self colorForInternalStatus: job conclusion)) ] );
	selectedJob: 0;
	changed: #jobNames;
	changed: #selectedJob