exception handling
throwExceptionForResponseCode: aNumber
	
	 ^ (self errorDictionary at: aNumber ifAbsent: [ Error ]) signal