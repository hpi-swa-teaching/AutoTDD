updating
colorForSelectedHistory
	
	| state |
	
	state := self parser parseBuildStateAt: self selectedHistory ofRepository: self data repositoryJson.
	
	^ self colorForInternalStatus: state