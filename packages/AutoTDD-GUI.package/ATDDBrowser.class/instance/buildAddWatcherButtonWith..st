building
buildAddWatcherButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addWatcher;
		label: 'Add watcher';
		enabled: true;
		yourself