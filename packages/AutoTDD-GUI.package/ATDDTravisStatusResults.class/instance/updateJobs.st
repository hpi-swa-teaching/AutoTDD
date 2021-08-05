updating
updateJobs
	
	| matrix id |
	
	id := self parser parseIdOfBuildAt: self selectedHistory ofBuildsOfRepository: self data repositoryJson.
	matrix := self parser parseBuildMatrixOfBuild: (self data buildJsonFor: id).
	self
		jobs: (matrix
				collect: [ :job |
					Text new
						append: '#', (job at: #number), String space, (job at: #env);
						addAttribute: (TextColor color: (self colorForInternalStatus: (job at: #state))) ]);
		selectedJob: 0;
		changed: #jobs;
		changed: #selectedJob