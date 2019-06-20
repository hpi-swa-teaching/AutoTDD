building
buildCategoryLabelWith: aBuilder
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #categoryLabelText;
		yourself