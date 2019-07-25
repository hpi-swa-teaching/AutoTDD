accessing
state
	
	| data |
	
	data := self data repositoryJson.
	
	^ (self parser parseCurrentBuildStateOfRepository: data) asSymbol