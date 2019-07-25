updating
historyInfoForSelectedHistory
	
	| build |
	
	build := self parser
		parseBuildAt: self selectedHistory
		ofRepository: self data repositoryJson.
	
	^ '#' , (build at: #number) , ' ' , (build at: #state) , String crlf
		, (build at: #branch) , ' - ' , (build at: #message)