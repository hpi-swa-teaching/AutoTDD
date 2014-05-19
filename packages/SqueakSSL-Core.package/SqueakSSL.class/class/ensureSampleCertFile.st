examples
ensureSampleCertFile
	"On Unix, we can simply create a valid cert file"

	| certName file |
	SqueakSSL platformName = 'unix' ifFalse:[^self].
	certName := self name, 'Cert.pem'.
	(FileDirectory default fileExists: certName) ifFalse:[
		file := FileDirectory default newFileNamed: certName.
		[file nextPutAll: self exampleCertFile] ensure:[file close].
	].
	^FileDirectory default fullNameFor: certName.
