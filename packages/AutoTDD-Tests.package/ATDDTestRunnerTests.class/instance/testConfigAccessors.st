tests
testConfigAccessors
	
	| c |
	
	c := Object new.
	testrunner config: c.
	self assert: testrunner config equals: c