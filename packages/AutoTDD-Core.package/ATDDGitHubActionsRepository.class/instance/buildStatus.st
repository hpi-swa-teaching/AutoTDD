accessing
buildStatus

	| workflowJson parsedWorkflowJson |
	
	workflowJson := self client getJsonForLatestWorkflowRunForRepository: owner, '/', repository, '/'.
	parsedWorkflowJson := parser parseLatestWorkflowRun: workflowJson.
	
	^ self parser primitiveParseLatestWorkflowRunConclusion: parsedWorkflowJson
	