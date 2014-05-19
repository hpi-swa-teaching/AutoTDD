instance creation
on: aSocket
	"Convenience API. Create a SqueakSSL operating on a standard TCP socket.
	Generally not very useful for real applications (it lacks error handling etc) 
	but very helpful for debugging and other experiments."

	^self new on: aSocket