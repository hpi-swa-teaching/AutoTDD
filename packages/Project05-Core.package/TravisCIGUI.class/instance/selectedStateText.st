as yet unclassified
selectedStateText
	
	| build |
	build := self parser parseBuildAt: self selectedBuild ofRepository: self repositoryJson.
	^ '#', (build at: #number), ' ', (build at: #state), String crlf,
		(build at: #branch), ' - ', (build at: #message)