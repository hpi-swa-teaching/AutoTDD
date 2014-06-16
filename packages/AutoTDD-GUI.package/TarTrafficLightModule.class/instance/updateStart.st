as yet unclassified
updateStart
	
	self progressBar ifNotNilDo: [ :progressBar | 
		progressBar
			show;
			value: self data testSuite valueHolder ]