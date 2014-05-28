updating
update

	self 
		json: (self client getJsonForBuildsOfRepository: self repository);
		changed: #builds;
		changed: #jobs;
		changed: #stateColor;
		changed: #stateText