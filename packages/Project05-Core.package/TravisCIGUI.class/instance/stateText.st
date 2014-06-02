as yet unclassified
stateText
	
	| state |
	state := self parser parseCurrentBuildStateOfRepository: self repositoryJson.
	^ Text new
		append: 'Current Build:', String crlf, state;
		addAttribute: (TextAlignment new alignment: 2)