accessing
localProgress
	
	| progress |
	
	progress := self localTestRunner progress contents.
	
	^ (progress asFloat * 100) integerPart asString , '%'