as yet unclassified
selectedStateColor
	
	| state |
	state := self parser parseBuildStateAt: self selectedBuild
		ofRepository: self data repositoryJson.
	^ self convertColorForState: state