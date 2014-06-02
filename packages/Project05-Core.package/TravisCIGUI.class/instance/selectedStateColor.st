as yet unclassified
selectedStateColor
	
	| state |
	state := self parser parseBuildStateAt: self selectedBuild ofRepository: self repositoryJson.
	^ self convertColorForState: state