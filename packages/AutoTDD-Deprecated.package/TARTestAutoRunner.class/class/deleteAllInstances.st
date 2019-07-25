initialize-release
deleteAllInstances
	
	self instances
		do: [ :instance |
			instance observers do: [ :each | each delete ].
			instance delete ].
	self instances reset