data-processing
getJsonForJobsForRepository: aString forWorkflowRunId: aNumber
	"aString follows this template: {owner}/{repo}/"
	
	^ self requestOn: 'repos/', aString, '/actions/runs/', aNumber asString, '/jobs'