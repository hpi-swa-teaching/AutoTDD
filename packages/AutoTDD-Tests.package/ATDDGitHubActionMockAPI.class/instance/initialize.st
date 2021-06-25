as yet unclassified
initialize 

	| port routes |
	
	super initialize. 
	port := 9999.
	self listenOn: port.
	routes := self class routes. 
	routes keysAndValuesDo: [ :key :value | self addService: key action: [ :req | ^ req send200Response: value contentType: 'application/json' ] ]
	