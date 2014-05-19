accessing
peerName
	"Returns the certificate name of the remote peer.
	The method only returns a name if the certificate has been verified."

	^ssl ifNotNil:[ssl peerName]