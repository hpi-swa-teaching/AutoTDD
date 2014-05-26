as yet unclassified
displayCurrentBuildStatusForRepository: aString

	| status json |
	json := self client getJsonForBuildsOfRepository: aString.
	status := self parser parseCurrentBuildStatusForJsonOfRepository: json.
	self
		backgroundColor: (self convertColorForState: status);
		newContents: status;
		playSoundForState: status.