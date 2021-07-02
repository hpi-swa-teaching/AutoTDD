tests
testParsingSmalltalkCILog

	| parsedResult |
	
	parsedResult := resultsWindow parseSmalltalkCILog: self sampleSmalltalkLog.
	self assert: parsedResult hasColorAttribute equals: true.
	"does not include time-stamps"
	self assert: (parsedResult asString includesSubstring: '2021-05-23T12') equals: false.