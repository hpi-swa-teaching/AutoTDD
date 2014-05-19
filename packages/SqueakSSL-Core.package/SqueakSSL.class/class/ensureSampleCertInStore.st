examples
ensureSampleCertInStore
	"Ensure that we have a valid certificate in the Windows certificate store"

	SqueakSSL platformName = 'Win32' ifFalse:[^self].
	"Undocumented. Allows importing a pfx w/o password.
	For the sole purpose of being able to run tests reliably"
	SqueakSSL new setStringProperty: 10001 to: self exampleCertPFX.
	^'testcert'. "Friendly name of test cert"
