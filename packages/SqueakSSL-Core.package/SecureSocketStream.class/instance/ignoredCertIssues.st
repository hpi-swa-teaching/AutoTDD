accessing
ignoredCertIssues
	"Answer the mask of 'acceptable issues' with certs. To completely ignore all cert issues use -1 which still ensures privacy (encryption) to the remote host, but does not guard against a man-in-the-middle attack (i.e., you cannot be sure that the remote host is what he says he is). The reasons are a bit mask consisting of the following values:
		1 - If set, there is an unspecified issue with the cert (generic error)
		2 - If set, the root CA is untrusted (usually a self-signed cert)
		4 - If set, the certificate is expired.
		8 - If set, the certificate is used for the wrong purpose
		16 - If set, the CN of the certificate is invalid.
		32 - If set, the certificate was revoked.
	"

	^certIssues