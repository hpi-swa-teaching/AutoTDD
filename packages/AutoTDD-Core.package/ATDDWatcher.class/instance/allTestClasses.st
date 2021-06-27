action
allTestClasses
	
	self isTestingClasswise ifTrue: [ ^ self classesToTest ] ifFalse: [ ^ self testClassesFromCategories ]