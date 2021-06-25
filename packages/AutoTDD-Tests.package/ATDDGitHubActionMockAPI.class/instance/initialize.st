initialize
initialize 

	| port routes |
	
	super initialize. 
	port := 9999.
	self listenOn: port.
	routes := self class routes. 
	routes keysAndValuesDo: [ :key :dict |
		self addService: key action: [ :req |
			^ req send200Response: (dict at: 'content') contentType: (dict at: 'contentType')
		]
	]