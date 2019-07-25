tests
testApiConnect
	
	| client response |
	
	client := ATDDTravisClient new.
	response := client requestOn: ''.
	self assert: response equals: (Json readFrom: self defaultAnswer readStream)