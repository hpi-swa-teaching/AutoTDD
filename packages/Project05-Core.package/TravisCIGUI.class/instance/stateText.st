as yet unclassified
stateText
	
	| build |
	build := self parser parseCurrentBuildOfRepository: self json.
	self playSoundForState: (build at: #state).
	^ '#', (build at: #number), ' ', (build at: #state), String crlf,
		(build at: #branch), ' - ', (build at: #message)