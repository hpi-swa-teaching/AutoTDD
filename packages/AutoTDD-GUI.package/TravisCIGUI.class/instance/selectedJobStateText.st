building
selectedJobStateText

	^ (self parser parseDetailedStateFromLog: self log)
		ifEmpty: [ self logFrame
			topFraction: 0
			offset: (self horizontalLines second second + 4) ]
		ifNotEmpty: [ self logFrame
			topFraction: 0
			offset: (self horizontalLines second third + 4) ];
		yourself