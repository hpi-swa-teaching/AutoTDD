as yet unclassified
parseCurrentBuildForJsonOfRepository: aJson

	| build state message branch number |
	build := IdentityDictionary new.
	(aJson at: 'builds')
		ifEmpty: [number := '0']
		ifNotEmpty:	[number := ((aJson at: 'builds') first at: 'number')].
	(aJson at: 'builds')
		ifEmpty: [state := 'unknown']
		ifNotEmpty:	[state := ((aJson at: 'builds') first at: 'state')].
	(aJson at: 'commits')
		ifEmpty: [message := '']
		ifNotEmpty:	[message := ((aJson at: 'commits') first at: 'message')].
	(aJson at: 'commits')
		ifEmpty: [branch := '']
		ifNotEmpty:	[branch := ((aJson at: 'commits') first at: 'branch')].
	^ build
		at: #number put: number;
		at: #state put: state;
		at: #message put: message;
		at: #branch put: branch;
		yourself