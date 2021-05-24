updating
historyInfoForSelectedHistory
	
	| workflow |
	
	workflow := self parser parseWorkflowAt: self selectedHistory ofRepository: self data repositoryJson.
	
	^ '#' , ( workflow at: #number ) , ' ' , ( workflow at: #conclusion) , String crlf , ( workflow at: #branch ) , ' - ' , ( workflow at: #message )