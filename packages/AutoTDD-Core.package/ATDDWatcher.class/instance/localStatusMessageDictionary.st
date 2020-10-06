accessing
localStatusMessageDictionary
	
	^ localStatusMessageDictionary
		ifNil: [
			| summaryBlock |
			
			summaryBlock := [ self localTestRunner resultSummary ].
			localStatusMessageDictionary := IdentityDictionary new
				at: #unexecuted put: [ self class notExecutedText ];
				at: #executing put: [ self localProgress ];
				at: #passed put: summaryBlock;
				at: #failed put: summaryBlock;
				at: #errored put: summaryBlock;
				yourself ]