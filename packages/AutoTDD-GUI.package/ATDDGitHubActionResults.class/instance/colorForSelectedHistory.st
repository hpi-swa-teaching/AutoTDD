updating
colorForSelectedHistory
	
	| conclusion |
	
	conclusion := self parser parseWorkflowConclusionAt: self selectedHistory ofRepository: self data repositoryJson.
	
	^ self colorForInternalStatus: conclusion