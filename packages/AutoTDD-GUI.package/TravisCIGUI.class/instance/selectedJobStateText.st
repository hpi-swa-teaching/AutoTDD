building
selectedJobStateText

	| jobState |
	jobState := self parser parseDetailedStateFromLog: (self log).
	(jobState = '')
		ifTrue: [self logFrame topFraction: 0 offset: (self horizontalLines second second + 4)] 
		ifFalse: [self logFrame topFraction: 0 offset: (self horizontalLines second third + 4)].
	^ jobState