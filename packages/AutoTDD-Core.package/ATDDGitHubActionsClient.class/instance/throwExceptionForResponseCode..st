accessing
throwExceptionForResponseCode: aNumber
	
	(self errorDictionary at: aNumber ifAbsent: [ [  ] ]) fork