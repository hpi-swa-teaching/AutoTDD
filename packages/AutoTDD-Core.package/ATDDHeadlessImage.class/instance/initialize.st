initialization
initialize
	
	FileDirectory default forceNewFileNamed: 'startServerScript.st' do: [ :str | str nextPutAll: 'ATDDHeadlessImage startServer.'].
	self process: (OSProcess command: Smalltalk vm vmFileName , ' -headless ' , Smalltalk imageName, ' startServerScript.st').
	Smalltalk addToShutDownList: self