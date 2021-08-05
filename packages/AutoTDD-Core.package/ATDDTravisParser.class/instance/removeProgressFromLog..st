parsing
removeProgressFromLog: aString
	
	| log |
	
	log := aString copyWithRegex: 'remote\: Compressing objects\:\s+\d+%\s+\(\d*/\d*\)\s.*', String cr matchesReplacedWith: String empty.
	log := log copyWithRegex: 'Receiving objects\:\s+\d+%\s+\(\d*/\d*\)\s.*', String cr matchesReplacedWith: String empty.
	log := log copyWithRegex: 'Resolving deltas\:\s+\d+%\s+\(\d*/\d*\)\s.*', String cr matchesReplacedWith: String empty.
	
	^ log
		copyWithRegex: '\(Reading database\s\.\.\.\s+(', String cr, '|\d*%.*', String cr, ')' matchesReplacedWith: String empty;
		yourself