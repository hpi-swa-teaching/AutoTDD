updating
update

	| state oldstate |
	oldstate := self parser parseCurrentBuildStateOfRepository: self repositoryJson.
	self repositoryJson: (self client getJsonForBuildsOfRepository: self repository).
	state := self parser parseCurrentBuildStateOfRepository: self repositoryJson.
	(oldstate ~= state) ifTrue: [self playSoundForState: state].
	self
		changed: #builds;
		changed: #jobs;
		changed: #stateColor;
		changed: #stateText