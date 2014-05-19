private-socket
receiveDataInto: buffer startingAt: index
	"Read and decrypt the data from the underlying socket. "

	| count bytesRead |
	"While in handshake, use the superclass version"
	ssl ifNil:[
		"Pre-4.2 compatibility; should be 'super receiveDataInto: buffer startingAt: index'"
		^socket  receiveAvailableDataInto: buffer startingAt: index.
	].

	"Only decode more data if all the decoded contents has been drained"
	decoded atEnd ifTrue:[
		"Decrypt more data if available"
		bytesRead := 0.
		[count := ssl decrypt: readBuf from: 1 to: bytesRead into: decoded originalContents.
		count < 0 ifTrue:[^self error: 'SSL error, code: ', count].
		bytesRead := 0.
		count = 0 ifTrue:[
			bytesRead := socket receiveAvailableDataInto: readBuf startingAt: 1.
		].
		bytesRead = 0] whileFalse.
		"Update for number of bytes decoded"
		decoded setFrom: 1 to: count.
	].

	"Push data from decoded into the result buffer"
	count := (decoded size - decoded position) min: (buffer size - index + 1).
	(decoded next: count into: buffer startingAt: index) size < count
		ifTrue:[^self error: 'Unexpected read failure'].
	^count
