initialization
applyDefaultConfiguration
	self
		name: 'New Watcher';
		paused: true;
		watchClasses: false;
		runTestClasses: false;
		watchedPackages: Set new;
		watchedClasses: Set new;
		testPackages: Set new;		
		testClasses: Set new