parsing
parseWorkflowRunsOf: aJson
	
	^ aJson at: 'workflow_runs' ifAbsent: [ Array new ]