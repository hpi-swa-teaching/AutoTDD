initialization
applyDefaultConfiguration
	
	self
		name: self class defaultName;
		isWatchingClasswise: false;
		isTestingClasswise: false;
		categoriesToWatch: Set new;
		classesToWatch: Set new;
		categoriesToTest: Set new;
		classesToTest: Set new