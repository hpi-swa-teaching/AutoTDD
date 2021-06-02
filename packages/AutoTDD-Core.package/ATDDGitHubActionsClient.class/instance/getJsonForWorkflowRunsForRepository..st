data-processing
getJsonForWorkflowRunsForRepository: aString
	"aString follows this template: {owner}/{repo}/"
	
	^ self requestOn: 'repos/' , aString , '/actions/runs'
	