private
setStringProperty: index to: aString
	"Private. Use with caution"

	^self primitiveSSL: handle setStringProperty: index toValue: aString