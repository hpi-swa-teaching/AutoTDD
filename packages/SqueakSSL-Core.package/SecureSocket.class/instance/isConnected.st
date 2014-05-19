primitives
isConnected
	"Return true if this socket is connected."
	"We mustn't return false if there is data available"

	^super isConnected or:[self dataAvailable]