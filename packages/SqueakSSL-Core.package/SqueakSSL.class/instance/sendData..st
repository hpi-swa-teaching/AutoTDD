convenience
sendData: inbuf
	"Convenience API. Encrypt and send data"

	| outbuf count |
	outbuf := inbuf class new: inbuf size + 100.
	count := self encrypt: inbuf from: 1 to: inbuf size into: outbuf.
	^self writeData: outbuf count: count.