accessing
selectedTest: aTest
	
	selectedTest := aTest.
	self changed: #selectedTest.
	self debugTest: aTest