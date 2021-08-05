updating
parseSmalltalkCILog: aString

	| log shouldIncludeLine parsedLine |
	
	log := Text new.
	shouldIncludeLine := false.
	parsedLine := String empty.
	
	aString linesDo: [ :line |
		"start of logging"
		(line includesSubstring: 'Running suite "Squeak')
			ifTrue: [ shouldIncludeLine := true ].
			
		"Remove timestamp"
		(line isEmpty)
			ifTrue: [ parsedLine := line ]
			ifFalse: [ parsedLine := line allButFirst: 28 ].
		
		"Parse Ansi Codes + Add new line (CR)"
		parsedLine := self parseAnsiCodeOf: parsedLine.
		parsedLine := parsedLine, Character cr asText.
		
 		(shouldIncludeLine) ifTrue: [log append: parsedLine].
			
		"end of logging"
		(line matchesRegex: '.*Executed \d* Tests with \d* Failures and \d* Errors.*')
			ifTrue: [shouldIncludeLine := false].
	].
	
	^ log