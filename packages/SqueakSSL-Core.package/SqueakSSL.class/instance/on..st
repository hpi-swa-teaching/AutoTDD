initialize
on: aSocket
	"Convenience API. Set up SqueakSSL to operate on a standard TCP socket.
	Generally not very useful for real applications (it lacks error handling etc) 
	but very helpful for debugging and other experiments."

	self readBlock:[:inbuf|
		aSocket waitForDataIfClosed:[].
		aSocket receiveDataInto: inbuf.
	].
	self writeBlock:[:outbuf :count|
		aSocket sendData: (outbuf copyFrom: 1 to: count).
	].