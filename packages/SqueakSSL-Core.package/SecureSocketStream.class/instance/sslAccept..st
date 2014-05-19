initialize
sslAccept: certName
	"Perform the SSL server handshake. This method uses all the common SocketStream methods to adhere to the various timeout/signalling settings of SocketStream. It only installs the SSL instance after the handshake is complete."

	| squeakSSL result inbuf |
	inbuf := ''.
	squeakSSL := SqueakSSL new.
	squeakSSL certName: certName.

	"Perform the server handshake"
	[[squeakSSL isConnected] whileFalse:[
		"Read input"
		self receiveData.
		inbuf := self nextAvailable.
		result := squeakSSL accept: inbuf from: 1 to: inbuf size into: sendBuf.

		"Check for errors first"
		result < -1 ifTrue:[^self error: 'SSL accept failed with code: ', result].

		"If a token has been produced in the handshake, send it to the remote"
		result > 0 ifTrue:[
			self nextPutAll: (sendBuf copyFrom: 1 to: result).
			self flush.
		].
	].
	"There should be no pending data at this point, ensure it is so.
	XXXX: If you ever see this problem, please inform me."
	self isInBufferEmpty ifFalse:[self error: 'Unexpected input data'].
	"We are connected. From here on, encryption will take place."
	ssl := squeakSSL.
	] ifCurtailed:[
		"Make sure we destroy the platform handle if the handshake gets interrupted"
		squeakSSL destroy.
	].
