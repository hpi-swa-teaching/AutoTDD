convenience
receiveData
	"Convenience API. Receive data and decrypt it."

	| inbuf outbuf count |
	inbuf := String new: 4096.
	outbuf := String new: 4096.

	^String streamContents:[:s|
		"Read the next input bytes"
		count := self readDataInto: inbuf.
		"Push the input bytes into the SSL"
		count := self decrypt: inbuf from: 1 to: count into: outbuf.
		"And keep draining as long as output is being produced"
		[count > 0] whileTrue:[
			s next: count putAll: outbuf.
			count := self decrypt: inbuf from: 1 to: 0 into: outbuf.
		].
	].