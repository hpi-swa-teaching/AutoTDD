data-processing
getTextForLog: aString
	
	^ self requestAPIOn: 'jobs/', aString, '/log.txt?deansi=true'