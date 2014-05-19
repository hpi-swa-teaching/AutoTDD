initialize
initialize
	"Initialize the receiver"
	
	"I think 16k is the max for SSL frames so use a tad more"
	decoded := ReadStream on: (ByteArray new: 20000) from: 1 to: 0.

	super initialize.

	sendBuf := ByteArray new: 4096.
	readBuf := ByteArray new: 4096.
	certIssues := 0.
