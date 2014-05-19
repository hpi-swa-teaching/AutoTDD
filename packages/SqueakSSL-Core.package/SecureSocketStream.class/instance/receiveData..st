private-compat
receiveData: nBytes
	"Pre Squeak 4.2 compatibility"

	self receiveAvailableData.
	^super receiveData: nBytes.