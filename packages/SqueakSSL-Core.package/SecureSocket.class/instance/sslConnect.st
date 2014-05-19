connect
sslConnect
	"Perform the SSL client handshake. This method uses all the common SocketStream methods to adhere to the various timeout/signalling settings of SocketStream. It only installs the SSL instance after the handshake is complete."

	| inbuf squeakSSL result |
	inbuf := ''.
	squeakSSL := SqueakSSL new.

	"Perform the SSL handshake"
	[[result := squeakSSL connect: inbuf from: 1 to: inbuf size into: sendBuf.
	result = 0] whileFalse:[
		"Check for errors first"
		result < -1 ifTrue:[^self error: 'SSL connect failed with code: ', result].

		"If a token has been produced in the handshake, send it to the remote"
		result > 0 ifTrue:[self sendData: (sendBuf copyFrom: 1 to: result)].

		"Read more input and repeat"
		inbuf := self receiveData.
	].
	"We are connected. From here on, encryption will take place."
	ssl := squeakSSL.
	] ifCurtailed:[
		"Make sure we destroy the platform handle if the handshake gets interrupted"
		squeakSSL destroy.
	].
