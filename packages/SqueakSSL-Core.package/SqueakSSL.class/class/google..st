examples
google: query
	"An example HTTPS query to encrypted.google.com.
	Example:
		SqueakSSL google: 'squeak'.
		SqueakSSL google: 'SqueakSSL'.
	"

	| hostName address socket ssl |

	"Change the host name to try an https request to some other host"
	hostName := 'encrypted.google.com'..

	address := NetNameResolver addressForName: hostName.
	socket := Socket newTCP.

	"Connect the TCP socket"
	socket connectTo: address port: 443.
	socket waitForConnectionFor: 10.

	"Set up SqueakSSL using the convenience APIs"
	ssl := SqueakSSL on: socket.

	["Let SqueakSSL handle the client handshake"
	ssl connect.

	"Verify that the cert is valid"
	ssl certState = 0 ifFalse:[
		self error: 'The certificate is invalid (code: ', ssl certState,')'.
	].

	"If the certificate is valid, make sure we're were we wanted to go"
	(ssl peerName match: hostName) ifFalse:[
		self error: 'Host name mismatch: ', ssl peerName.
	].

	"Send encrypted data"
	ssl sendData:
		'GET /search?q=', query,' HTTP/1.0', String crlf,
		'Host: ', hostName, String crlf,
		'Connection: close', String crlf,
		String crlf.

	"Wait for the response"
	^String streamContents:[:s|
		[socket isConnected | socket dataAvailable] 
			whileTrue:[s nextPutAll: ssl receiveData]].
	] ensure:[ssl destroy].
