updating
updateJobs
	
	| id jobs client|
	
	id := self parser parseIdOfWorkflowAt: self selectedHistory ofWorkflowsOfRepository: self data repositoryJson.
	client := ATDDGitHubActionsClient new.
	jobs := self parser parseJobsOf: ( client getJsonForJobsForRepository: (self data repository , '/') forWorkflowRunId: id ).

	self
		jobs: (jobs
				collect: [ :job |
					Text new
						append: '#' , ( self parser primitiveParseNameOf: job );
						addAttribute: ( TextColor color: (self colorForStatus: (self parser primitiveParseLatestWorkflowRunConclusion: job))) ] );
		selectedJob: 0;
		changed: #jobs;
		changed: #selectedJob
