accessing
logLevel: aNumber
	"Sets the log level of the ssl instance"

	^self primitiveSSL: handle setIntProperty: 1 toValue: aNumber