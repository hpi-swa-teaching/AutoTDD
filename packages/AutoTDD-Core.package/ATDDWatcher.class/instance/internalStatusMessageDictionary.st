accessing
internalStatusMessageDictionary
	
	^ Dictionary 
		newFrom: {
			'unexecuted' -> [ self class notExecutedText ].
			'executing' -> [ self localProgress ].
			'passed' -> [ self localTestRunner resultSummary ].
			'failed' -> [ self localTestRunner resultSummary ].
			'errored' -> [ self localTestRunner resultSummary ].
		}