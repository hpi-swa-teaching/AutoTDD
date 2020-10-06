building
buildEditWatcherButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #editWatcher;
		label: 'Edit';
		enabled: true;
		yourself