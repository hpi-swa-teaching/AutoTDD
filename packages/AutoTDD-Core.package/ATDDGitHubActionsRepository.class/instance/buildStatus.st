accessing
buildStatus

	| json parsedJson |
	
	json := self client getJsonForLatestWorkflowRunForRepository: owner, '/', repository, '/'.
	parsedJson := self parser parseLatestWorkflowRun: json.
	
	^ self parser primitiveParseLatestWorkflowRunConclusion: parsedJson