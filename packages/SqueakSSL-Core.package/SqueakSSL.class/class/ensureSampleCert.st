examples
ensureSampleCert
	"Ensure that we have a sample certificate for the tests"

	SqueakSSL platformName caseOf: {
		['unix'] -> [^self ensureSampleCertFile].
		['Win32'] -> [^self ensureSampleCertInStore].
	} otherwise: [^nil].
