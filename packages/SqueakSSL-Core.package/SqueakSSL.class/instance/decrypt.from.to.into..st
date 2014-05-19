operations
decrypt: srcBuf from: start to: stop into: dstBuf
	"Decrypt the input in srcBuf into the provided output buffer.

	Clients are expected to adhere to the following rules:
		* The size of dstBuf must be large enough for the largest encrypted packet.
		* Clients must not call this method with a huge srcBuf (tens of kb of data)
		* After having called this method with new input, clients must call it 
		   with NO input until all data has been 'drained' for example:
			count := squeakSSL decrypt: srcBuf into: dstBuf.
			[count > 0] whileTrue:[
				count := squeakSSL decrypt: #[] into: dstBuf.
			].
	"

	^self primitiveSSL: handle decrypt: srcBuf startingAt: start count: stop-start+1 into: dstBuf