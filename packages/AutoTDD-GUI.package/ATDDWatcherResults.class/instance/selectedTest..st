accessing
selectedTest: anObject
	selectedTest := anObject.
	self changed: #selectedTest.
	self debugTest: anObject