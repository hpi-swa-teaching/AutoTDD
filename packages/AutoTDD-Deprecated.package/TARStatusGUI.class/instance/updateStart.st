updating
updateStart
	
	self progressBar
		ifNotNilDo: [ :progressBar |
			progressBar value: self testSuite valueHolder contents ]