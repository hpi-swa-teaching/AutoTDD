building
buildUseProCheckboxWith: aBuilder
	
	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #useProCheckBoxLabel;
		action: #useProCheckBoxAction;
		state: #useProCheckBoxState;
		yourself