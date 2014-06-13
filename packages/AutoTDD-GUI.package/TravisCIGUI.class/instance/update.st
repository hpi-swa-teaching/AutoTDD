updating
update

	| state |
	state := self parser parseCurrentBuildStateOfRepository: self data repositoryJson.
	self changedValues.	
	(state ~= self previousState) ifTrue: [ self playSoundForState: state ].
	self previousState: state