as yet unclassified
throwExceptionForResponseCode: aNumber

	(self errorDictionary at: aNumber ifAbsent: [[]]) fork