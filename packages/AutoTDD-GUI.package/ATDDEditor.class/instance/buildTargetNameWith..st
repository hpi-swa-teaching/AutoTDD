building
buildTargetNameWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: targetName;
		help: self nameHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself