action
isClassTestClass: aClass
	
	self isTestingClasswise ifTrue: [ ^ self classesToTest includes: aClass ] ifFalse: [ ^ self categoriesToTest includes: aClass category ]