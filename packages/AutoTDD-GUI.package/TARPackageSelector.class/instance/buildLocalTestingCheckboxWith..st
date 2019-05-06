building
buildLocalTestingCheckboxWith: aBuilder
	
	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #checkBoxLabel;
		action: #categoryCheckBoxAction;
		state: #categoryCheckBoxState;
		yourself