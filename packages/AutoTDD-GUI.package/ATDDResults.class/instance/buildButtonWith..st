building
buildButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #buttonAction;
		label: self buttonLabel;
		enabled: true;
		yourself