examples
google: query
	"An example HTTPS query to encrypted.google.com.
	Example:
		SecureSocket google: 'squeak'.
		SecureSocket google: 'SqueakSSL'.
	"

	| hostName address socket |

	"Change the host name to try an https request to some other host"
	hostName := 'encrypted.google.com'..

	address := NetNameResolver addressForName: hostName.
	socket := SecureSocket newTCP.

	"Connect the TCP socket"
	socket connectTo: address port: 443.
	socket waitForConnectionFor: 10.

	["Handle the client handshake"
	socket sslConnect.

	"Verify that the cert is valid"
	socket certState = 0 ifFalse:[
		self error: 'The certificate is invalid (code: ', socket certState,')'.
	].

	"If the certificate is valid, make sure we're were we wanted to go"
	(socket peerName match: hostName) ifFalse:[
		self error: 'Host name mismatch: ', socket peerName.
	].

	"Send encrypted data"
	socket sendData:
		'GET /search?q=', query,' HTTP/1.0', String crlf,
		'Host: ', hostName, String crlf,
		'Connection: close', String crlf,
		String crlf.

	"Wait for the response"
	^String streamContents:[:s|
		[[true] whileTrue:[s nextPutAll: socket receiveData]]
			on: ConnectionClosed, ConnectionTimedOut do:[:ex| ex return].
	]] ensure:[socket destroy].
