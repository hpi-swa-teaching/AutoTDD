building
buildTravisTestingCheckboxWith: aBuilder
	
	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #travisTestingCheckBoxLabel;
		action: #travisTestingCheckBoxAction;
		state: #travisTestingCheckBoxState;
		yourself