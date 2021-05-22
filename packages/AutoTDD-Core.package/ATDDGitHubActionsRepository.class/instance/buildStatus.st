accessing
buildStatus

	| parsedJson |
	
	parsedJson := self parser parseLatestWorkflowRun: self latestWorkflowJson.
	
	^ (self parser primitiveParseLatestWorkflowRunConclusion: parsedJson) asSymbol