as yet unclassified
stateColor
	
	| state json |
	json := self client getJsonForBuildsOfRepository: self repository.
	state := self parser parseCurrentBuildStateOfRepository: json.
	^ self convertColorForState: state