tests
testAnsiParsing

	| sampleString parsedString |
	
	sampleString := '2021-05-23T12:57:07.9111495Z [0m[32m ✓[0m #testInitialization (0ms)[0m'.
	parsedString := resultsWindow parseAnsiCodeOf: sampleString. 
	self assert: parsedString hasColorAttribute equals: true. 
	self assert: (parsedString asString includesSubstring: 'PASS') equals: true.
	self assert: (parsedString colorAt: 3) equals: (resultsWindow colorForStatus: #successful).
	
	sampleString := '2021-05-23T12:57:07.9111495Z [0m[31m ✓[0m #testInitialization (0ms)[0m'.
	parsedString := resultsWindow parseAnsiCodeOf: sampleString. 
	self assert: parsedString hasColorAttribute equals: true. 
	self assert: (parsedString asString includesSubstring: 'ERROR') equals: true.
	self assert: (parsedString colorAt: 3) equals: (resultsWindow colorForStatus: #error).
	
	sampleString := '2021-05-23T12:57:07.9111495Z [0m[33m ✓[0m #testInitialization (0ms)[0m'.
	parsedString := resultsWindow parseAnsiCodeOf: sampleString. 
	self assert: parsedString hasColorAttribute equals: true. 
	self assert: (parsedString asString includesSubstring: 'FAIL') equals: true.
	self assert: (parsedString colorAt: 3) equals: (resultsWindow colorForStatus: #failure)	