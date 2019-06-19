building
buildTestCategoryLabelWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		model: self;
		help: self testCategoryLabelText;
		readOnly: true;
		yourself