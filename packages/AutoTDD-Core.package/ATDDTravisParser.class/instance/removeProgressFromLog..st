parsing
removeProgressFromLog: aString
	
	| log |
	
	log := aString
		copyWithRegex: 
				'remote\: Compressing objects\:\s+\d+%\s+\(\d*/\d*\)\s.*'
			, String cr
		matchesReplacedWith: ''.
	log := log
		copyWithRegex: 'Receiving objects\:\s+\d+%\s+\(\d*/\d*\)\s.*'
			, String cr
		matchesReplacedWith: ''.
	log := log
		copyWithRegex: 'Resolving deltas\:\s+\d+%\s+\(\d*/\d*\)\s.*'
			, String cr
		matchesReplacedWith: ''.
	
	^ log
		copyWithRegex: '\(Reading database\s\.\.\.\s+(' , String cr
				, '|\d*%.*' , String cr , ')'
			matchesReplacedWith: '';
		yourself