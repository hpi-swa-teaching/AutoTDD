as yet unclassified
buildTokenWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: token;
		help: self tokenHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself