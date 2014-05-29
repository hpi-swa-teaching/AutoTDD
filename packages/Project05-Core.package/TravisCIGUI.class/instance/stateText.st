as yet unclassified
stateText
	
	| build |
	build := self parser parseCurrentBuildOfRepository: self repositoryJson.
	^ '#', (build at: #number), ' ', (build at: #state), String crlf,
		(build at: #branch), ' - ', (build at: #message)