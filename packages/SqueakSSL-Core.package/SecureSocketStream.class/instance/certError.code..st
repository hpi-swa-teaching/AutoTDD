errors
certError: errorString code: reason
	"Signal an issue with a certificate. If the reason code matches the acceptable cert issues, continue, otherwise signal an error."

	(certIssues allMask: reason) ifTrue:[^self].
	^SqueakSSLCertificateError signal: errorString, '(code: ', reason, ')'.
