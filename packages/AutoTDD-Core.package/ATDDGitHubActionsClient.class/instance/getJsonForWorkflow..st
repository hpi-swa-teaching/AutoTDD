constants
getJsonForWorkflow: aString
	
	^ self requestOn: '/actions/runs' , aString