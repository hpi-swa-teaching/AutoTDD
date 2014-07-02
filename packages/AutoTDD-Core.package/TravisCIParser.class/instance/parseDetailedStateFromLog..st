as yet unclassified
parseDetailedStateFromLog: aString

	| matches stateRegex trimRegex newline |
	newline := '(' , String crlf , '|' , String cr , '|' , String lf , ')'.
	stateRegex := '\*+' , newline ,
		'\s+Results\s+for\s+.*' , newline , 
		'.*' , newline , 
		'\*+' , newline , 
		'\*+' , newline.
	trimRegex := '(\*+' , newline ,')|(\s+Results\s+for.*' , newline , ')'.
	matches := aString allRegexMatches: stateRegex.
	matches ifEmpty: [^''].
	^ (matches first copyWithRegex: trimRegex matchesReplacedWith: '') withBlanksTrimmed