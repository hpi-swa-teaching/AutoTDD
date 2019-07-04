building
buildTokenWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: token;
		help: self class tokenHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself