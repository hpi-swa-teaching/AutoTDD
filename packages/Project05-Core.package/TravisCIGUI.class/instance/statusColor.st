as yet unclassified
statusColor
	
	| status json |
	json := self client getJsonForBuildsOfRepository: self repository.
	status := self parser parseCurrentBuildStatusForJsonOfRepository: json.
	^ self convertColorForState: status