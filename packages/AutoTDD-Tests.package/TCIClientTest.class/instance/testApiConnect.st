tests
testApiConnect

	| client response |
	client := TCIClient new.
	response := client requestOn: ''.
	self assert: response equals: (Json readFrom: self defaultAnswer readStream)