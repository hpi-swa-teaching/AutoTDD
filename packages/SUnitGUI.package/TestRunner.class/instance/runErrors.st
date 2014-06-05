actions
runErrors
	self result instVarNamed: 'errors' put: OrderedCollection new.
	self runSuite: self suiteErrors.