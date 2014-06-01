as yet unclassified
getTextForLog: aString

	^ self requestAWSOn: 'jobs/', aString, '/log.txt'