as yet unclassified
testHistory

	self assert: resultsWindow history size > 0.
	self assert: (resultsWindow history first asString includesSubstring: '103-Mock-API')