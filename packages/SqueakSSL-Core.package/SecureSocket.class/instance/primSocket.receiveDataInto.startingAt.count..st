primitives
primSocket: socketID receiveDataInto: buffer startingAt: index count: count
	"Receive data from the given socket into the given array starting at the given index. Return the number of bytes read or zero if no data is available."
	| total |

	ssl ifNil:[^super primSocket: socketID receiveDataInto: buffer startingAt: index count: count].

	self decodeData.

	"Push data from decoded into the result buffer"
	total := (decoded size - decoded position) min: (buffer size - index + 1).
	(decoded readInto: buffer startingAt: index count: total) = total 
		ifFalse:[self error: 'Unexpected read failure'].
	^total
