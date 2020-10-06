building
buildWatcherListWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #watchers;
		getIndex: #selectedWatcher;
		setIndex: #selectedWatcher:;
		getSelectionList: #watcherAt:;
		setSelectionList: #watcherAt:put:;
		yourself