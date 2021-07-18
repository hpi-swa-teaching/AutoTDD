initialization
startServer

	| server |
	
	server := WebServer new.
	server listenOn: 8888;
		addService: '/' action: [ :req | req send200Response: 'hello World'].
	Smalltalk addToShutDownList: server