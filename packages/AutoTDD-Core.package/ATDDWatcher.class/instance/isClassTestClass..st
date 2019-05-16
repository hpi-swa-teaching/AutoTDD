behavior
isClassTestClass: aClass
	self runTestClasses
		ifTrue: [ ^self testClasses includes: aClass ]
		ifFalse: [ ^self testPackages includes: aClass category ]