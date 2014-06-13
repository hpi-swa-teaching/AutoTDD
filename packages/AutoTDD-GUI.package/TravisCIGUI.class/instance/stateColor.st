as yet unclassified
stateColor
	
	| state |
	state := self parser parseCurrentBuildStateOfRepository: self data repositoryJson.
	^ self convertColorForState: state