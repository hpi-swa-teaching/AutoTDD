primitives
decodeData
	"Receive data from the given socket into the given array starting at the given index. Return the number of bytes read or zero if no data is available."
	| total bytesRead |
	decoded atEnd ifFalse:[^self].

	"Decrypt more data if available"
	bytesRead := 0.
	[total := ssl decrypt: readBuf from: 1 to: bytesRead into: decoded originalContents.
	total < 0 ifTrue:[^self error: 'SSL error, code: ', total].
	bytesRead := 0.
	total = 0 ifTrue:[
		bytesRead := super primSocket: socketHandle receiveDataInto: readBuf startingAt: 1 count: readBuf size.
	].
	bytesRead = 0] whileFalse.

	"Update for number of bytes decoded"
	decoded setFrom: 1 to: total.
