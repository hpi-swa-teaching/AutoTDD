building
buildFailureListWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		name: 'Failure List';
		list: #failedList; 
		menu: #failureMenu:;
		getIndex: #failedSelected; 
		setIndex: #failedSelected:;
		yourself.