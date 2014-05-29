as yet unclassified
stateColor
	
	| state |
	state := self parser parseCurrentBuildStateOfRepository: self repositoryJson.
	^ self convertColorForState: state