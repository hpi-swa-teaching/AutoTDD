updating
parseAnsiCodeOf: aString
	
	|parsedLine|
	
	parsedLine := aString. 
	(parsedLine includesSubstring: '[32')
			ifTrue: [parsedLine := parsedLine asText addAttribute: (TextColor color: Color green)]
			ifFalse: [
				(parsedLine includesSubstring: '[31')
			ifTrue: [parsedLine := parsedLine asText addAttribute: (TextColor color: Color red)]
			ifFalse: [
				(parsedLine includesSubstring: '[34')
					ifTrue: [parsedLine := parsedLine asText addAttribute: (TextColor color: Color blue)]
				]	
			].	
		parsedLine := parsedLine copyReplaceAll: '[0m' with: ''.
		parsedLine := parsedLine copyReplaceAll: '[1m' with: ''.
		parsedLine := parsedLine copyReplaceAll: '[31m' with: ''.
		parsedLine := parsedLine copyReplaceAll: '[32m' with: ''.	
		parsedLine := parsedLine copyReplaceAll: '[34m' with: ''.
		parsedLine := parsedLine copyReplaceAll: '✗' with: '[FAIL]'. "This question mark is a cross"
		parsedLine := parsedLine copyReplaceAll: '✓' with: '[PASS]'. "This question mark is a check mark"
		^ parsedLine