constants
getLogsForRepository: aString forLogId: aNumber
	
	^ self requestOn: 'repos/' , aString , '/actions/jobs/' , aNumber asStringOrText , '/logs'