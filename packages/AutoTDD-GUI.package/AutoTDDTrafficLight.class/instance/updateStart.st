utility
updateStart
	
	self progressBar ifNotNilDo: [ :progressBar | 
		progressBar
			show;
			value: self localData testSuite valueHolder ]