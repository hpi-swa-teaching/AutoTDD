updating
parseAnsiCodeOf: aString
	
	| parsedLine prefixColorDictonary match |
	
	"Set default values"
	parsedLine := aString.
	match := (parsedLine allRegexMatches: '#\w* \(\d*ms\)') at: 1 ifAbsent: [ nil ].
	
	self class ansiCodeDictonary keysAndValuesDo: [ :aKey :aDictionary |
		match ifNotNil: [
			(parsedLine includesSubstring: aKey) ifTrue: [ prefixColorDictonary := aDictionary ]
		]
	].
			
	"Remove all Ansi Codes"
	parsedLine := parsedLine copyWithRegex: '\[\d+m' matchesReplacedWith: ''.
	parsedLine := match ifNil: [ parsedLine ].
		
	prefixColorDictonary ifNotNil: [
		parsedLine :=
			' [' asText,
			((prefixColorDictonary at: 'prefix') asText addAttribute: (TextColor color: (prefixColorDictonary at: 'color'))),
			'] ' asText,
			parsedLine asText
	]
	ifNil: [ parsedLine := parsedLine asText ].
	
	^ parsedLine