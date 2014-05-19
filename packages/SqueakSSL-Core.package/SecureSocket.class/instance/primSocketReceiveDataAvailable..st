primitives
primSocketReceiveDataAvailable: socketID
	"Return true if data may be available for reading from the current socket."

	ssl ifNil:[^super primSocketReceiveDataAvailable: socketID].
	self decodeData.
	^decoded atEnd not