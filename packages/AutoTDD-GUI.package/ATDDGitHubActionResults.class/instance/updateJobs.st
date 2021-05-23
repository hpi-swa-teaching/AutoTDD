updating
updateJobs
	
	| matrix id |
	
	id := self parser parseIdOfWorkflowAt: self selectedHistory ofWorkflowsOfRepository: self data repositoryJson.
	matrix := self parser parseBuildMatrixOfBuild: (self data workflowJsonFor: id).
	self
		jobs: (matrix
				collect: [ :job |
					Text new
						append: '#' , (job at: #number) , String space , (job at: #env);
						addAttribute: (TextColor color: (self colorForStatus: (job at: #state))) ]);
		selectedJob: 0;
		changed: #jobs;
		changed: #selectedJob