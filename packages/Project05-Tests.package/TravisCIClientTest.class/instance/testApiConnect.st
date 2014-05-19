tests
testApiConnect

	| client response |
	client := TravisCIClient new.
	response := client requestOn: ''.
	self assert: response equals: self defaultAnswer