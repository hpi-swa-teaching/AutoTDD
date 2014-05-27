as yet unclassified
statusText
	
	| build json |
	json := self client getJsonForBuildsOfRepository: self repository.
	build := self parser parseCurrentBuildOfRepository: json.
	self playSoundForState: (build at: #state).
	^ '#', (build at: #number), ' ', (build at: #state), String crlf,
		(build at: #branch), ' - ', (build at: #message)