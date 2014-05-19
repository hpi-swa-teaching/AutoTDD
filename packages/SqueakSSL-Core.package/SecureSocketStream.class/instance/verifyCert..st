initialize
verifyCert: hostName
	"Verifies the cert state and host name"

	| certFlags |
	certFlags := self certState.
	certFlags = -1 
		ifTrue:[^self certError: 'No certificate was provided' code: -1].
	certFlags = 0 
		ifFalse:[self certError: 'Invalid certificate' code: certFlags].
	(ssl peerName match: hostName) 
		ifFalse:[self certError: 'Host name mismatch' code: -1].