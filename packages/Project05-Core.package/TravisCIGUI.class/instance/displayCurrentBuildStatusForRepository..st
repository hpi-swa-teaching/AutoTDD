as yet unclassified
displayCurrentBuildStatusForRepository: aString

	| status |
	status := self client parseCurrentBuildStatusForRepository: aString.
	self
		backgroundColor: (self convertColorForState: status);
		color: Color black;
		newContents: status