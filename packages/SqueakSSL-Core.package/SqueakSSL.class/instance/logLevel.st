accessing
logLevel
	"Returns the log level of the ssl instance"

	^self primitiveSSL: handle getIntProperty: 1