building
buildTestCategoryCheckboxWith: aBuilder
	
	^ aBuilder pluggableCheckBoxSpec new
		model: self;
		label: #checkBoxLabel;
		action: #testCategoryCheckBoxAction;
		state: #testCategoryCheckBoxState;
		yourself