convenience
connect
	"Convenience API. Perform an SSL client handshake. 
	Raises an error if something goes wrong."

	| inbuf outbuf count result |

	inbuf := ByteArray new: 4096.
	outbuf := ByteArray new: 4096.
	count := 0.

	"Begin the SSL handshake"
	[result := self connect: inbuf from: 1 to: count into: outbuf.
	result = 0] whileFalse:[
		"Check for errors first"
		(Delay forMilliseconds: 100) wait.
		result < -1 ifTrue:[^self error: 'SSL connect failed with code: ', result].

		"If a token has been produced in the handshake, send it to the remote"
		result > 0 ifTrue:[self writeData: outbuf count: result].

		"Read more input and repeat"
		count := self readDataInto: inbuf.
	].