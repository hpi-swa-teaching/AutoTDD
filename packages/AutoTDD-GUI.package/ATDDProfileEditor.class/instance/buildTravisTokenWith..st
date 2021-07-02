building
buildTravisTokenWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: travisToken;
		help: self class travisTokenHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself