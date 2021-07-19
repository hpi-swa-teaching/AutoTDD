initialization
start

	FileDirectory default forceNewFileNamed: 'startServerScript.st' do: [ :str | str nextPutAll: 'ATDDTestingImage startServer.'].
	self process: (OSProcess command: Smalltalk vm vmFileName , ' -headless ' , Smalltalk imageName, ' startServerScript.st').
	Smalltalk addToShutDownList: self