as yet unclassified
runTests
	self watcher runTestClasses 
		ifTrue: [self runTestsFromClasses: self testClasses]
		ifFalse: [self runTestsFromCategories: self testPackages]