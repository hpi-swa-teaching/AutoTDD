as yet unclassified
statusColor
	
	| status json |
	json := self client getJsonForBuildsOfRepository: self repository.
	status := self parser parseCurrentBuildStatusOfRepository: json.
	^ self convertColorForState: status