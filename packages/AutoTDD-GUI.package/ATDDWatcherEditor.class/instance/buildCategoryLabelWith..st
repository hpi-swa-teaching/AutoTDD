building
buildCategoryLabelWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		model: self;
		help: self categoryLabelText;
		readOnly: true;
		yourself