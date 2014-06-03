updating
update

	| state oldState |
	oldState := self parser parseCurrentBuildStateOfRepository: self repositoryJson.
	self repositoryJson: (self client getJsonForBuildsOfRepository: self repository).
	state := self parser parseCurrentBuildStateOfRepository: self repositoryJson.
	self logsDictionary: IdentityDictionary new.
	self buildsDictionary: IdentityDictionary new.
	self changedValues.
	(oldState ~= state) ifTrue: [ self playSoundForState: state ]