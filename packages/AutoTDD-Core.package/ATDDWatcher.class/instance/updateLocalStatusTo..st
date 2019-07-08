accessing
updateLocalStatusTo: aSymbol
	self localStatus: aSymbol.
	(aSymbol = #unexecuted)
		ifTrue: [self localStatusBlock: [self class notExecutedText]].
	(aSymbol = #executing)
		ifTrue: [self localStatusBlock: [self localProgress]].
	(#(#passed #failed #errored) includes: aSymbol)
		ifTrue:
			[self finishedTesting.
			self localStatusBlock: [self localTestRunner resultSummary]]