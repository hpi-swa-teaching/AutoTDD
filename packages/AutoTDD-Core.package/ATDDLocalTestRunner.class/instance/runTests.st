as yet unclassified
runTests
	self testResult: nil.
	self watcher runTestClasses 
		ifTrue: [self runTestsFromClasses: self watcher testClasses]
		ifFalse: [self runTestsFromCategories: self watcher testPackages]