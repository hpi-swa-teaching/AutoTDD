tests
testIsSmalltalkCiLog

	| sampleString |
	
	sampleString := 'I dont know, this is some text that is not a valid log'.
	self assert: (resultsWindow isSmalltalkCILog: sampleString) equals: false.
	sampleString := 
	'This is some log, 
	some more log
	Run hpi-swa/setup-smalltalkCI
	some more log'.
	self assert: (resultsWindow isSmalltalkCILog: sampleString) equals: true