tests
testApiConnect
	
	| client response |
	
	client := ATDDTravisClient new.
	response := client requestOn: ''.
	self assert: response equals: (Json readFrom: self defaultAnswer readStream).
	response := client requestAPIOn: ''.
	self assert: response equals: self defaultAnswer