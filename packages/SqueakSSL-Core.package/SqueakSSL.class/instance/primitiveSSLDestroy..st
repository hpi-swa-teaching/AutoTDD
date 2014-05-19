primitives
primitiveSSLDestroy: sslHandle
	"Primitive. Destroys the SSL session handle"

	<primitive: 'primitiveDestroy' module: 'SqueakSSL'>
	^self primitiveFailed