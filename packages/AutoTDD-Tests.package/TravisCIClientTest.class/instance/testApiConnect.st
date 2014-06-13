tests
testApiConnect

	| client response |
	client := TravisCIClient new.
	response := client requestOn: ''.
	self assert: response equals: (Json readFrom: self defaultAnswer readStream)