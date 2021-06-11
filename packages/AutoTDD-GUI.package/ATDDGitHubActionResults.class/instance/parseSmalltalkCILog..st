updating
parseSmalltalkCILog: aString

	| log shouldIncludeLine parsedLine |
	
	log := Text new.
	shouldIncludeLine := false.
	parsedLine := ''.
	
	aString linesDo: [ :line |
		(line includesSubstring: 'Running suite "Squeak')
			ifTrue: [ shouldIncludeLine := true ]. "start of logging"
			
		(line isEmpty)
			ifTrue: [ parsedLine := line]
			ifFalse: [parsedLine := line allButFirst: 28]. "Remove timestamp"
		parsedLine := parsedLine, Character cr. "Add new Line"
		
		(shouldIncludeLine)
			ifTrue: [log append: parsedLine].
			
		(line matchesRegex: '.*Executed \d* Tests with \d* Failures and \d* Errors.*')
			ifTrue: [shouldIncludeLine := false]. "end of logging"
	].
	
	^ log