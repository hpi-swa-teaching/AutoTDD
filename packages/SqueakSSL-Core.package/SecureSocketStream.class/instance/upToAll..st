private-compat
upToAll: aStringOrByteArray
	"Pre Squeak 4.2 compatibility"

	^self upToAll: aStringOrByteArray limit: 100000