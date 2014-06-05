building
buildStatusWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		menu: #statusMenu:;
		color: #statusColor;
		getText: #statusText;
		yourself.