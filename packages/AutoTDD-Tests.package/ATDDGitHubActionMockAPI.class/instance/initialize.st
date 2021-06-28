initialize
initialize 
	
	super initialize.
	
	self listenOn: 9999.
	self class routes keysAndValuesDo: [ :key :dict |
		self addService: key action: [ :req |
			req send200Response: (dict at: 'content') contentType: (dict at: 'contentType')]]