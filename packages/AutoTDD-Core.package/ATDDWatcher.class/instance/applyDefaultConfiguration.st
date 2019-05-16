initialization
applyDefaultConfiguration
	self
		name: 'New Watcher';
		paused: true;
		watchClasses: false;
		runTestClasses: false;
		watchedPackages: OrderedCollection new;
		watchedClasses: OrderedCollection new;
		testPackages: OrderedCollection new;		
		testClasses: OrderedCollection new