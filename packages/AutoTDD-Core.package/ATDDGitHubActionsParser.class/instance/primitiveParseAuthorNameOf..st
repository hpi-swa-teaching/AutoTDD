primitive-parsing
primitiveParseAuthorNameOf: aJson
	"The author in gitHubActions is a json of a name and an email"

	| author |
	
	author := aJson at: 'author'  ifAbsent: [ ^ String empty ].
	^ author at: 'name' ifAbsent: [ String empty ]