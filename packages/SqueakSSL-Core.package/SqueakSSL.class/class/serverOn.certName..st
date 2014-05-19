examples
serverOn: port certName: certName
	"An HTTPS server example. Fires up a listener at the given port such that
	you can point a browser to that https url. Responds with a single line of text
	and closes the listener after the first connection.

		SqueakSSL 
			serverOn: 8443
			certName: 'Internet Widgits Pty'.

		SqueakSSL 
			serverOn: 8443 
			certName: '/home/andreas/certs/testcert.pem'.

	"
	| listener socket ssl |
	"Set up the listener socket"
	listener := Socket newTCP.
	listener listenOn: port backlogSize: 8.
	[socket := listener waitForAcceptFor: 30.
	socket == nil] whileTrue.
	listener destroy.

	"Set up SqueakSSL for the just accepted connection"
	[ssl := SqueakSSL on: socket.

	"The SSL needs the cert name."
	ssl certName: certName.

	"Let SqueakSSL do the server handshake"
	ssl accept.

	"Read out the HTTPS request"
	ssl receiveData.
	
	"And send the response"
	ssl sendData:
		'HTTP/1.0 200 OK', String crlf,
		'Connection: close', String crlf,
		'Content-Type: text/plain', String crlf,
		'Server: SqueakSSL', String crlf,
		String crlf,
		'This is a successful SqueakSSL response.'.

	socket close.

	] ensure:[
		ssl destroy.
		socket destroy.
	].