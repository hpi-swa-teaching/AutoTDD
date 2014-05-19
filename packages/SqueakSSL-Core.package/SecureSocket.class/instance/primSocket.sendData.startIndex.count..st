primitives
primSocket: socketID sendData: buffer startIndex: start count: amount
	"Send data to the remote host through the given socket starting with the given byte index of the given byte array. The data sent is 'pushed' immediately. Return the number of bytes of data actually sent; any remaining data should be re-submitted for sending after the current send operation has completed."
	"Note: In general, it many take several sendData calls to transmit a large data array since the data is sent in send-buffer-sized chunks. The size of the send buffer is determined when the socket is created."

	| count |
	ssl ifNil:[^super primSocket: socketID sendData: buffer startIndex: start count: amount].

	count := ssl encrypt: buffer from: start to: start+amount-1 into: sendBuf.
	count < 0 ifTrue:[self error: 'SSL Error: ', count].
	^super primSocket: socketID sendData: sendBuf startIndex: 1 count: count