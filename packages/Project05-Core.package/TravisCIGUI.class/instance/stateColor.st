as yet unclassified
stateColor
	
	| state |
	state := self parser parseCurrentBuildStateOfRepository: self json.
	^ self convertColorForState: state