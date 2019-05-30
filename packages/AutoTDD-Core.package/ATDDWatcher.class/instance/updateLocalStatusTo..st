accessing
updateLocalStatusTo: aSymbol
	(aSymbol = #unexecuted)
		ifTrue: [self localStatus: [self class notExecutedText]].
	(aSymbol = #executing)
		ifTrue: [self localStatus: [self localProgress]].
	(aSymbol = #finished)
		ifTrue: [self localStatus: [self localTestRunner resultSummary]].