initialization
initialize

	self process: (OSProcess command: Smalltalk vm vmFileName , ' -headless ' , Smalltalk imageName)