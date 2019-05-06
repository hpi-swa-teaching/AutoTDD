updating
updateStart
	
	self progressBar ifNotNilDo: [ :progressBar | 
		progressBar
			extent: (self owner baseExtent x - 20) @ 10;
			show;
			value: self data testSuite valueHolder ]