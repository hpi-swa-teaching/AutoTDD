as yet unclassified
displayCurrentBuildStatusForRepository: aString

	| status |
	status := self client parseCurrentBuildStatusForRepository: aString.
	status = 'passed' 
		ifTrue: [ self color: Color green ].