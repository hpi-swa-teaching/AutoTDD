primitives
primitiveSSL: sslHandle setIntProperty: propID toValue: anInteger
	"Primitive. Sets a string property in an SSL session."

	<primitive: 'primitiveSetIntProperty' module: 'SqueakSSL'>
	^self primitiveFailed