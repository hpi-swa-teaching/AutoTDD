accessing
selectedTest: anObject
	
	selectedTest := anObject.
	self changed: #selectedTest.
	(self tests at: self selectedTest ifAbsent: [ ^ self ]) debug