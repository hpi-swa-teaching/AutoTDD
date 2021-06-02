data-processing
getLogsForRepository: aString logId: aNumber
	
	^ self requestOn: 'repos/' , aString , '/actions/jobs/' , aNumber asStringOrText , '/logs'