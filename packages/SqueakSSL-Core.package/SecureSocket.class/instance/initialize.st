initialize
initialize

	super initialize.
	decoded := ReadStream on: (ByteArray new: 20000) from: 1 to: 0.
	sendBuf := ByteArray new: 4096.
	readBuf := ByteArray new: 4096.
