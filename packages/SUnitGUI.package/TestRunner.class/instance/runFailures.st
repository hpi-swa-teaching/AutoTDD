actions
runFailures
	self result instVarNamed: 'failures' put: Set new.
	self runSuite: self suiteFailures.