shutdown
shutDown: quitting
	
	quitting ifTrue: [ self process sigterm ]