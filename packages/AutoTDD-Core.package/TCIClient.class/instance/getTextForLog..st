data-processing
getTextForLog: aString

	^ self requestAWSOn: 'jobs/', aString, '/log.txt'