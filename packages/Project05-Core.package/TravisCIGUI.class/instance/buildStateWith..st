building
buildStateWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		color: #stateColor;
		getText: #stateText;
		yourself.