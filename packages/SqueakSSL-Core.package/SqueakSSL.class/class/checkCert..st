utilities
checkCert: certName
	"Attempt to verify the cert with the given name by performing 
	an SSL handshake. Raises an error if there is an issue with the cert,
	returns the peer name from the cert if successful."

	| sslClient sslServer inbuf outbuf result |
	inbuf := ByteArray new: 4096.
	outbuf := ByteArray new: 4096.

	["Perform the SSL handshake"
	sslClient := SqueakSSL new.
	sslServer := SqueakSSL new.
	sslServer certName: certName.

	result := 0.
	[result := sslClient connect: inbuf from: 1 to: result into: outbuf.
	result = 0] whileFalse:[
		result < -1 ifTrue:[^self error: 'SSL handshake failed (client code: ', result, ')'].
		result := sslServer accept: outbuf from: 1 to: result into: inbuf.
		result < -1 ifTrue:[^self error: 'SSL handshake failed (server code: ', result, ')'].
	].

	"Handshake complete. Check the cert status"
	sslClient certState = 0 ifFalse:[
		^self error: 'Certificate validation failed (code: ', sslClient certState, ')'.
	].

	"When successful, just return the peer name to the caller"
	^sslClient peerName
	
	] ensure:[
		sslClient ifNotNil:[sslClient destroy].
		sslServer ifNotNil:[sslServer destroy].
	].