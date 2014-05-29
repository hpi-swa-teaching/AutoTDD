updating
update

	| state |
	self 
		json: (self client getJsonForBuildsOfRepository: self repository).
	state := self parser parseCurrentBuildStateOfRepository: self json.
	self playSoundForState: state.
	self
		changed: #builds;
		changed: #jobs;
		changed: #stateColor;
		changed: #stateText