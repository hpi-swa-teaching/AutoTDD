parsing
parseLatestWorkflowRun: aJson
	
	^ (aJson at: 'workflow_runs') first