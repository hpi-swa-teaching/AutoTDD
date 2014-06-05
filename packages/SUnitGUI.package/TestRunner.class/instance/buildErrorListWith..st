building
buildErrorListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		name: 'Error List';
		list: #errorList; 
		menu: #errorMenu:;
		getIndex: #errorSelected; 
		setIndex: #errorSelected:;
		yourself.