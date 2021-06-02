data-processing
getJsonForWorkflow: aString
	
	^ self requestOn: '/actions/runs' , aString