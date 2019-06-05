as yet unclassified
buildTravisStatusNameWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: travisStatusName;
		help: self travisStatusNameHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself