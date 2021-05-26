updating
updateJobs
	
	| id jobs client|
	
	id := self parser parseIdOfWorkflowAt: self selectedHistory ofWorkflowsOfRepository: self data repositoryJson.
	client := ATDDGitHubActionsClient new.
	jobs := self parser parseJobsOf: ( client getJsonForJobsForRepository: (self data repository , '/') forWorkflowRunId: id ).
	
	self jobs: (jobs collect: [ :job | ATDDGitHubActionWorklowJob newForId: (parser primitiveParseIdOf: job) 
		andName: (parser primitiveParseNameOf: job) 
		andConclusion: (parser primitiveParseLatestWorkflowRunConclusion: job) ] ).
	
	self jobNames: (self jobs collect: [ :job |
		Text new append: '#' , job name;
		addAttribute: ( TextColor color: (self colorForStatus: job conclusion)) ] );
	selectedJob: 0;
	changed: #jobNames;
	changed: #selectedJob
