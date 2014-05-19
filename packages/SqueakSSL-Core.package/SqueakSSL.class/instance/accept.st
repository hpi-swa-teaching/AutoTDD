convenience
accept
	"Convenience API. Perform an SSL server handshake.
	Raises an error if something goes wrong."

	| inbuf outbuf count result |

	inbuf := ByteArray new: 4096.
	outbuf := ByteArray new: 4096.
	count := 0.

	[self isConnected] whileFalse:[
		"Read input"
		count := self readDataInto: inbuf.
		result := self accept: inbuf from: 1 to: count into: outbuf.

		"Check for errors first"
		result < -1 ifTrue:[^self error: 'SSL accept failed with code: ', result].

		"If a token has been produced in the handshake, send it to the remote"
		result > 0 ifTrue:[self writeData: outbuf count: result].
	].
