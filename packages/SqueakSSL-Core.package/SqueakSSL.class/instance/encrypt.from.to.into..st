operations
encrypt: srcBuf from: start to: stop into: dstBuf
	"Encrypt the input in srcBuf into the provided output buffer.
	The output buffer must be large enough to include the framing information."

	^self primitiveSSL: handle encrypt: srcBuf startingAt: start count: stop-start+1 into: dstBuf