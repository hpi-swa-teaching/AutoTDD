building
buildCategoryCheckboxWith: aBuilder
	
	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #classwiseCheckBoxLabel;
		action: #categoryCheckBoxAction;
		state: #categoryCheckBoxState;
		yourself