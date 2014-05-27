as yet unclassified
statusText
	
	| status json |
	json := self client getJsonForBuildsOfRepository: self repository.
	status := self parser parseCurrentBuildStatusForJsonOfRepository: json.
	self playSoundForState: status.
	^self repository, ': ', status