as yet unclassified
updateStart

	self progressBar ifNotNilDo: [ :progressBar |
		progressBar value: self data testSuite valueHolder ]