building
buildLocalTestingCheckboxWith: aBuilder
	
	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #localTestingCheckBoxLabel;
		action: #localTestingCheckBoxAction;
		state: #localTestingCheckBoxState;
		yourself