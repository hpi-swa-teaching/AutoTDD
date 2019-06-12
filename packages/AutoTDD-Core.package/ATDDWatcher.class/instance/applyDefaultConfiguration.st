initialization
applyDefaultConfiguration
	self
		name: 'New Watcher';
		paused: true;
		isWatchingClasswise: false;
		isTestingClasswise: false;
		categoriesToWatch: Set new;
		classesToWatch: Set new;
		categoriesToTest: Set new;		
		classesToTest: Set new