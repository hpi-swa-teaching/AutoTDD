private-compat
receiveAvailableData
	"Pre Squeak 4.2 compatibility"
	
	recentlyRead := self receiveDataInto: inBuffer startingAt: inNextToWrite.
	^self adjustInBuffer: recentlyRead
