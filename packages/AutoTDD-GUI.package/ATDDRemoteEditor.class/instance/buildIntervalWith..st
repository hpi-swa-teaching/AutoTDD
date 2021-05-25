accessing
buildIntervalWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: refreshInterval;
		help: self class intervalHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself