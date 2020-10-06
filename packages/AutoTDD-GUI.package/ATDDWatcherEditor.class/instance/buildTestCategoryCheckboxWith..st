building
buildTestCategoryCheckboxWith: aBuilder
	
	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #classwiseCheckBoxLabel;
		action: #testCategoryCheckBoxAction;
		state: #testCategoryCheckBoxState;
		yourself