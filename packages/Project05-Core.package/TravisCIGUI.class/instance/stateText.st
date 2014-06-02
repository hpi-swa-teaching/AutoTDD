as yet unclassified
stateText
	
	| state |
	state := self parser parseCurrentBuildStateOfRepository: self repositoryJson.
	"^ '#', (build at: #number), ' ', (build at: #state), String crlf,
		(build at: #branch), ' - ', (build at: #message)"
	^ Text new
		append: 'Current Build:', String crlf, state;
		addAttribute: (TextAlignment new alignment: 2)