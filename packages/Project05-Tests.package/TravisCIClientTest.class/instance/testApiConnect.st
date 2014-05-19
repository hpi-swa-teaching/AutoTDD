tests
testApiConnect

	| client response |
	client := TravisCIClient new.
	response := client requestOn: ''.
	self assert: response equals: (Json new readFrom: self defaultAnswer readStream)