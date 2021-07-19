initialization
startServer

	| server |
	
	server := WebServer new.
	server listenOn: 8888;
		addService: '/' action: [ :req | req send200Response: 'Hello World'].
	Smalltalk addToShutDownList: server