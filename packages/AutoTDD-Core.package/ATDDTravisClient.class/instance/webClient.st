accessing
webClient
	
	^ webClient
		ifNil: [
			webClient := WebClient new
				userAgent: self userAgent;
				yourself ]