action
loadTargetSpecs
	
	self
		repositoryUrl: self testingEntity repositoryURL;
		targetName: self testingEntity name;
		refreshInterval: self testingEntity refreshInterval;
		token: (self testingEntity token isEmptyOrNil 
			ifTrue: [ self class defaultToken ]
			ifFalse: [ self testingEntity token ] )