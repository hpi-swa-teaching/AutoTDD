data-processing
getJsonForLatestWorkflowRunForRepository: aString
	"aString follows this template: {owner}/{repo}/"
	
	^ self requestOn: 'repos/' , aString , '/actions/runs?per_page=1'
	