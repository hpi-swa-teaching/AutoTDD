building
buildHistoryInfoWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #historyInfo;
		yourself