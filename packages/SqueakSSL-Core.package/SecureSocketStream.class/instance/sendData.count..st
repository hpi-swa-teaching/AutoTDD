private-socket
sendData: buffer count: n
	"Encrypts the data before sending it on the underlying socket.
	Breaks large chunks into 2k components to fit safely into ssl frame."

	| remain start amount count |
	"While in handshake, use the superclass version"
	ssl ifNil:[
		"Pre-4.2 compatibility; should be 'super sendData: buffer count: n' instead"
		^socket sendData: buffer count: n
	].

	"Break the input into reasonable chunks and send them"
	remain := n. start := 1.
	[remain > 0] whileTrue:[
		amount := remain min: 2048.
		count := ssl encrypt: buffer from: start to: start+amount-1 into: sendBuf.
		socket sendData: sendBuf count: count.
		remain := remain - amount.
		start := start + amount.
	].