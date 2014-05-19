private-compat
isDataAvailable
	"Pre Squeak 4.2 compatibility"
 
	self isInBufferEmpty ifFalse: [^true].
	^self receiveAvailableData < inNextToWrite
