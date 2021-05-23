updating
updateJobs
	
	| id jobs |
	
	id := self parser parseIdOfWorkflowAt: self selectedHistory ofWorkflowsOfRepository: self data repositoryJson.
	jobs := self parser parseJobsOf: ( self client getJsonForJobsForRepository: self data repository forWorkflowRunId: id ).

	self
		jobs: (jobs
				collect: [ :job |
					Text new
						append: '#' , (job at: #number) , String space , (job at: #env);
						addAttribute: (TextColor color: (self colorForStatus: (job at: #state))) ]);
		selectedJob: 0;
		changed: #jobs;
		changed: #selectedJob
