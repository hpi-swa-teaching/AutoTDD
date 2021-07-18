accessing
shutDown: quitting
	
	quitting ifTrue: [ self process sigkill ]