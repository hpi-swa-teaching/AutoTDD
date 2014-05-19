private-socket
receiveData
	"This method drains the available decryption data before waiting for the socket"

	| pos |

	"Note: The loop here is necessary to catch cases where a TLS packet is
	split among TCP packets. In this case we would pull the first portion of
	the TLS packet here but receiveAvailableData would return nothing since
	the contents of the packet can't be decoded until the rest has come in."

	[pos := inNextToWrite.
	self receiveAvailableData.
	pos = inNextToWrite ifFalse:[^pos].

	"Pre-4.2 compatibility; should be 'super receiveData' instead."
	socket
		waitForDataFor: self timeout
		ifClosed: [self shouldSignal 
			ifTrue:[ConnectionClosed signal: 'Connection closed while waiting for data.']]
		ifTimedOut: [self shouldTimeout
			ifTrue:[ConnectionTimedOut signal: 'Data receive timed out.']].
	self isConnected] whileTrue.

	"Final attempt to read data if a non-signaling connection closes"
	^self receiveAvailableData.
