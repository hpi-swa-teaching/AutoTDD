initialize
sslConnect
	"Perform the SSL client handshake. This method uses all the common SocketStream methods to adhere to the various timeout/signalling settings of SocketStream. It only installs the SSL instance after the handshake is complete."

	| inbuf squeakSSL result |
	inbuf := ''.
	squeakSSL := SqueakSSL new.

	"Perform the SSL handshake"
	[[result := squeakSSL connect: inbuf from: 1 to: inbuf size into: sendBuf.
	result = 0] whileFalse:[
		"Check for errors first"
		(Delay forMilliseconds: 5) wait.
		result < -1 ifTrue:[^self error: 'SSL connect failed with code: ', result].

		"If a token has been produced in the handshake, send it to the remote"
		result > 0 ifTrue:[
			self nextPutAll: (sendBuf copyFrom: 1 to: result).
			self flush.
		].

		"Read more input and repeat"
		self receiveData.
		inbuf := self nextAvailable.
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
